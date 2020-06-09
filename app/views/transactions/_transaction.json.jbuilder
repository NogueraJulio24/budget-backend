json.extract! transaction, :id, :amount, :observation, :date, :description, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
