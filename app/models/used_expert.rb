class UsedExpert < ActiveRecord::Base
  belongs_to :experts
  belongs_to :cases
end
