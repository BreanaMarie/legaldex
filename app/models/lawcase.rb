class Lawcase < ActiveRecord::Base
  validates :internal_number, uniqueness: true
  validates_length_of :title, :allow_blank => false

  has_many :handling
  has_many :users, :through => :handling
  has_many :representations
  has_many :companies, :through => :representations
  has_many :firms, :through => :representations
  has_many :used_experts
  has_many :experts, :through => :used_experts
  
end
