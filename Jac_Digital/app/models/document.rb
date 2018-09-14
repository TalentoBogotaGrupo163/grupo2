class Document < ApplicationRecord
  belongs_to :document_type
  belongs_to :company
  belongs_to :state
end
