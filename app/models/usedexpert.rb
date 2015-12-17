class Usedexpert < ActiveRecord::Base
  belongs_to :experts
  belongs_to :lawcases
end
