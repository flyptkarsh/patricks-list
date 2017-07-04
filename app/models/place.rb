class Place < ApplicationRecord
  belongs_to :list
  extend FriendlyId
  friendly_id :name, use: :slugged

end
