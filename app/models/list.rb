class List < ApplicationRecord
  belongs_to :user
  has_many :places
  extend FriendlyId
  friendly_id :heading, use: :slugged

end
