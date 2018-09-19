class Document < ApplicationRecord
  belongs_to :document_type
  belongs_to :state
  belongs_to :company
end
