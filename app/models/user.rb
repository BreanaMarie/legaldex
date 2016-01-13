class User < ActiveRecord::Base
    has_secure_password
    validates :email, uniqueness: true
    validates_length_of :first_name, :allow_blank => false
    validates_length_of :last_name, :allow_blank => false

    has_many :groups
    has_many :practices, :through => :groups
    has_many :handlings
    has_many :lawcases, :through => :handlings
    has_many :reviews
    has_many :experts, :through => :reviews


    user = User.new
    user.valid? 
    user.errors[:email]
    user.errors.full_messages

    def full_name 
      "#{first_name} #{last_name}"
    end

    user.errors.clear
    user.errors.empty? 
    def a_method_used_for_validation_purposes
      errors.add(:email, "Email is already taken!")
    end

    def self.confirm(params)
      @user = User.find_by({email: params[:email]})
      @user.try(:authenticate, params[:password])
    end
end
