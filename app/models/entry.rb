class Entry < ApplicationRecord
  belongs_to :session
  validates :response, presence: true

  after_create_commit -> { broadcast_append_to session }
end
