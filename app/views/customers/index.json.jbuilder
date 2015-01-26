json.array!(@customers) do |customer|
  json.extract! customer, :id, :company_name, :email, :phone_number, :contact_person
  json.url customer_url(customer, format: :json)
end
