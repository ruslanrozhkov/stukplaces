class Place < ApplicationRecord
  validates_presence_of :name, :phone, :website, :user_id, :address
  belongs_to :user
end
