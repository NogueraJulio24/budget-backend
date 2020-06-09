json.extract! credit_card, :id, :name, :limit, :close_day, :pay_day, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)
