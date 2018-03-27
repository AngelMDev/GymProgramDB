class Program 
  has_one :gym_submissions
  has_one :user, through: :gym_submission
end