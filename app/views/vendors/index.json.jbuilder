json.array!(@vendors) do |vendor|
  json.extract! vendor, :business_name, :phone_number, :website, :business_desc, :headline, :street_address, :apt_ste, :zipcode, :show_info, :travel, :first_name, :last_name, :email, :encrypted_password
  json.url vendor_url(vendor, format: :json)
end
