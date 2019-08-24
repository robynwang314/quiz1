class Comment < ApplicationRecord
  validates :feedback, presence: true
end
