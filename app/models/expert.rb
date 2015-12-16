class Expert < ActiveRecord::Base
  validates_length_of :first_name, :allow_blank => false
  validates_length_of :last_name, :allow_blank => false

  has_many :used_experts
  has_many :lawcases, :through => :used_experts

  def experience 
    if time_in_field != nil
      days = Date.today - self.time_in_field
      years = days.to_i/ 365

    end
  end
end
