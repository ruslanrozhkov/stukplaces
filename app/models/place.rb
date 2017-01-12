# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  description :text
#  phone       :string
#  website     :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  latitude    :float
#  longitude   :float
#

class Place < ApplicationRecord
  validates_presence_of :name, :phone, :website, :user_id, :address
  belongs_to :user

  geocoded_by :address
  after_validation :geocode
end
