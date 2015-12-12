class Group < ActiveRecord::Base
  belongs_to :users
  belongs_to :practices
end
