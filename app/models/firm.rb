class Firm < ActiveRecord::Base
  has_many :representations
  has_many :companies, :through => :representations
  has_many :lawcases, :through => :representations
end
