class Project < ApplicationRecord
  has_many :sessions, dependent: :destroy
end
