class Session < ApplicationRecord
  belongs_to :project
  has_many :entries, dependent: :destroy

  validates :name, presence: true
  validates :opening_notes, presence: true
end
