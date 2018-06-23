json.extract! expense, :id, :concept, :amount, :date, :receiver, :created_at, :updated_at
json.url expense_url(expense, format: :json)
