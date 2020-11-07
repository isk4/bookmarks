class Bookmark < ApplicationRecord
  belongs_to :type, optional: true
  belongs_to :category, optional: true

  def type_name
    self.type.nil? ? "Undefined" : self.type.name
  end

  def category_name
    self.category.nil? ? "Undefined" : self.category.name
  end

  def url_link
    self.url
  end
end
