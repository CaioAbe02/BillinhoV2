json.extract! student, :id, :name, :cpf, :birth_date, :phone, :gender, :bill_payment_type, :created_at, :updated_at
json.url student_url(student, format: :json)
