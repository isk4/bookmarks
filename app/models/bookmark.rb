class Bookmark < ApplicationRecord
  belongs_to :type, optional: true
  belongs_to :category, optional: true
end
