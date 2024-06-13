class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  validates :user_id, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
