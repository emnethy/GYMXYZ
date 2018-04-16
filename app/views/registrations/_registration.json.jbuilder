json.extract! registration, :id, :firstname, :lastname, :email, :created_at, :updated_at
json.url registration_url(registration, format: :json)
