class Session < ApplicationRecord
  belongs_to :project
  has_many :entries, dependent: :destroy

  validates :name, presence: true
  validates :opening_notes, presence: true

   def export
    <<~MARKDOWN
      ## #{name}

      **Opening Notes**:
      #{opening_notes}

      ### Entries:
      #{entries.map { |entry| "- #{entry.response} (#{I18n.l(entry.created_at, format: :long)})" }.join("\n")}

      **Closing Notes**:
      #{closing_notes || "No closing notes provided."}
    MARKDOWN
  end
end
