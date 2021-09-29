json.extract! prescription, :id, :name, :dosage, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
