class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories
  has_many :bookmarks

  scope :root_categories, -> { where(category_id: nil) }

  def parent_category
    self.category.nil? ? "None" : self.category.name
  end
end
