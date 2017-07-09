class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { maximum: 35}
end
