class Store < ApplicationRecord
    belongs_to:prescription
    default_scope -> {order(created_at: :desc) }
    # presence: true
    # add validation
end
