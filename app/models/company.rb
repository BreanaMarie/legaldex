class Company < ActiveRecord::Base
  has_many :representations
  has_many :lawcases, :through => :representations
  has_many :firms, :through => :representations
  has_many :roles, :through => :representations
end
