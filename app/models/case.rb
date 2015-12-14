class Case < ActiveRecord::Base
  validates :internal_number, uniqueness: true
  validates_length_of :title, :allow_blank => false

  has_many :handling
  has_many :users, :through => :handling
  has_many :clients
  has_many :parties
end
