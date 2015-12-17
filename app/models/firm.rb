class Firm < ActiveRecord::Base
  has_many :representations
  has_many :companies, :through => :representations
  has_many :lawcases, :through => :representations
  has_many :usedexperts
  has_many :lawcases, :through => :usedexperts
  has_many :experts, :through => :usedexperts
end
