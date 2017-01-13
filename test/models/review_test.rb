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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
