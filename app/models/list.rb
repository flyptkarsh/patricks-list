class List < ApplicationRecord
  extend FriendlyId
  friendly_id :heading, use: :slugged
  belongs_to :user
  has_many :places
  accepts_nested_attributes_for :place, reject_if: :all_blank, allow_destroy: true
end
