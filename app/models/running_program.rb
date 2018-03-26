class RunningProgram 
  has_one: :running_submissions
  has_one: :user,through: :running_submissions
end