# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  place_id   :integer
#  user_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  score      :integer          default("0")
#

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates_presence_of :score
  validates_presence_of :content
  after_save :calculate_average

  def calculate_average
    a = self.place.average_rating
    self.place.update_attributes(total_average_rating: a)
  end
end
