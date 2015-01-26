json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :company_name, :e-mail, :phone_number, :contact_person
  json.url supplier_url(supplier, format: :json)
end
