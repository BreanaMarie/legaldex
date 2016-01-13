class Expert < ActiveRecord::Base
  validates_length_of :first_name, :allow_blank => false
  validates_length_of :last_name, :allow_blank => false

  has_many :usedexperts
  has_many :lawcases, :through => :usedexperts
  has_many :firms, :through => :usedexperts
  has_many :reviews
  has_many :users, :through => :reviews

  def experience 
    if time_in_field != nil
      days = Date.today - self.time_in_field
      years = days.to_i/ 365

    end
  end

  def full_name 
    "#{first_name} #{middle_name} #{last_name}"
  end
end
