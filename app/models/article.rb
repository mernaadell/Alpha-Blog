class Article < ApplicationRecord
  #---------------------validation---------
  # validates :title, presence: true, length: {minimum: 3, maximum: 50}
  # validates :description, presence: true, length: {minimum: 10, maximum: 300}
  #  To find errors in article object while saving (if it's rolled back):
  # article.errors.any?
  # article.errors.full_messages
#------------------------------------------
end
