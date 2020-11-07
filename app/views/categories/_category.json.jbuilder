json.extract! category, :id, :name, :parent_category, :bookmarks, :created_at, :updated_at
json.url category_url(category, format: :json)
json.subcategories do
    json.array! category.categories, partial: 'categories/category', as: 'category'
end
