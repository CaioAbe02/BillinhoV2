json.extract! enrollment, :id, :full_value, :installments, :due_day, :course_name, :institution_id, :student_id, :created_at, :updated_at
json.url enrollment_url(enrollment, format: :json)
