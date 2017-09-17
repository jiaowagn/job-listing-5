class Job < ApplicationRecord
  validates :title, presence: true
  validates_presence_of :wage_upper_bound, :wage_lower_bound
  validates :wage_lower_bound, numericality: { greater_than: 0 }
end
