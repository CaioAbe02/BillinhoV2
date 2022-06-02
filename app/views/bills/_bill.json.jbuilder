json.extract! bill, :id, :bill_value, :due_date, :enrollment_id, :bill_status, :created_at, :updated_at
json.url bill_url(bill, format: :json)
