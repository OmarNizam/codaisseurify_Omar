class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, length: { maximum: 35 }
end
