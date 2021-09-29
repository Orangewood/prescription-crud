class Prescription < ApplicationRecord
    has_many:stores, dependent: :destroy
    #add validation
end
