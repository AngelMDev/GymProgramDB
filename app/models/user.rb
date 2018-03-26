class User < ActiveRecord::Base
  has_many :gym_submissions
  has_many :running_submissions
  has_many :programs, through: :gym_submissions
  has_many :running_program, through: :running_submissions
end