class Event < ApplicationRecord
  # RELACIONES:
  belongs_to :state
  belongs_to :venue
  belongs_to :company
end
