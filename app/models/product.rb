class Product < ApplicationRecord

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
  validates :image, :presence => true
  #Not actually a good test, user could just add false file extension
  validates_format_of :image, :with => %r{\.(png|jpg|jpeg)$}i, :multiline => true, :message => "Invalid File Format, must be of type .png .jpg  or .jpeg"
end
