class Practice < ActiveRecord::Base
  has_many :groups
  has_many :users, :through => :groups
  has_many :assignments
  has_many :lawcases, :through => :assignments
end
