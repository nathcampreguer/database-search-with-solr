class Article < ActiveRecord::Base
  attr_accessible :name, :content, :published_at
  has_many :comments

  searchable do
    text :name, :content
  end
end
