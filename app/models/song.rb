class Song < ApplicationRecord
  belongs_to :artist, optional: true

  validates :title, presence: true, length: { maximum: 35 }

  def self.order_by_title
    order :title
  end

end
