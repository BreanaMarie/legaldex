class Lawcase < ActiveRecord::Base
  validates :internal_number, uniqueness: true
  validates_length_of :title, :allow_blank => false

  has_many :handling
  has_many :users, :through => :handling
  has_many :representations
  has_many :companies, :through => :representations
  has_many :firms, :through => :representations
  has_many :usedexperts
  has_many :experts, :through => :usedexperts
  has_many :firms, :through => :usedexperts
  has_many :assignments
  has_many :practices, :through => :assignments
end
