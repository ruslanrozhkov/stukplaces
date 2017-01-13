# == Schema Information
#
# Table name: places
#
#  id                   :integer          not null, primary key
#  name                 :string
#  address              :string
#  description          :text
#  phone                :string
#  website              :string
#  user_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  latitude             :float
#  longitude            :float
#  total_average_rating :integer          default("0")
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
