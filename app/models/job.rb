class Job < ApplicationRecord
  validates :title, presence: true
  validates_presence_of :wage_upper_bound, :wage_lower_bound
  validates :wage_lower_bound, numericality: { greater_than: 0 }

  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order("created_at DESC") }

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
