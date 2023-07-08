require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# Create some authors
author1 = Author.new('John Doe')
author2 = Author.new('Jane Smith')

# Create some magazines
magazine1 = Magazine.new('Magazine A', 'Category A')
magazine2 = Magazine.new('Magazine B', 'Category B')

# Create articles and associate them with authors and magazines
article1 = author1.add_article(magazine1, 'Article 1')
article2 = author2.add_article(magazine1, 'Article 2')
article3 = author1.add_article(magazine2, 'Article 3')

# Test the methods
puts author1.name
puts magazine1.name
puts magazine1.category
puts Magazine.all.inspect
puts article1.title
puts article1.author.name
puts article1.magazine.name
puts author1.articles.inspect
puts author1.magazines.inspect
puts author2.magazines.inspect
puts author1.topic_areas.inspect
puts magazine1.contributors.inspect
puts Magazine.find_by_name('Magazine A').inspect
puts magazine1.article_titles.inspect
puts magazine1.contributing_authors.inspect









### DO NOT REMOVE THIS
binding.pry

0
