class State < ApplicationRecord
    has_many :members
    has_many :users
    has_many :documents
    has_many :events
end
