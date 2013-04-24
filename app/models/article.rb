class Article < ActiveRecord::Base
  
  belongs_to :category

  validates_presense_of :title
  validates_presense_of :content

  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)

end
