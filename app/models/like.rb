class Like < ApplicationRecord
  validates :user_id, {presence: true}
  validates :park_id, {presence: true}
  validates :user_id, uniqueness: { scope: :park_id }

  belongs_to :user
  belongs_to :park
end
