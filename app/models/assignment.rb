class Assignment < ActiveRecord::Base
  belongs_to :lawcases
  belongs_to :practices
end
