class Representation < ActiveRecord::Base
  belongs_to :companies
  belongs_to :lawcases
  belongs_to :firms
end
