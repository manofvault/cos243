class Players < ActiveRecord::Base
  belongs_to :user
  belongs_to :contest
end
