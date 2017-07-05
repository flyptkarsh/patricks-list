class Place < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :list
end
