json.extract! store, :id, :name, :category, :description, :price, :ingredients, :made_without, :packaging, :certifications, :created_at, :updated_at
json.url store_url(store, format: :json)
