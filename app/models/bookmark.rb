class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 5 }, allow_blank: false
  validates :movie_id, uniqueness: { scope: :list_id }
end
