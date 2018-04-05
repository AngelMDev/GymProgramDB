class Program < ActiveRecord::Base
  belongs_to :user
  has_many :scores

  validates :name, presence: true
end