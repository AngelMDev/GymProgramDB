class User < ActiveRecord::Base
  has_many :gym_submissions
  has_many :programs, through: :gym_submissions
end