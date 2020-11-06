json.extract! bookmark, :id, :name, :url_link, :type_name, :category_name, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)