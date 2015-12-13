class Handling < ActiveRecord::Base
  belongs_to :users
  belongs_to :cases
end
