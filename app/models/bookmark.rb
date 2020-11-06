class Bookmark < ApplicationRecord
  belongs_to :type, optional: true
  belongs_to :category, optional: true

  def type_name
    self.type.name
  end

  def category_name
    self.category.name
  end

  def url_link
    self.url
  end
end
