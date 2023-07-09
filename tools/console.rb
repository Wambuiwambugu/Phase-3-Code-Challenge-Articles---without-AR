require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ##

# Sample data 
data = {
  authors: [
    { name: 'John Doe' },
    { name: 'Jane Smith' },
    { name: 'Bob Johnson' }
  ],
  magazines: [
    { name: 'Magazine A', category: 'Category A' },
    { name: 'Magazine B', category: 'Category B' },
    { name: 'Magazine C', category: 'Category A' }
  ],
  articles: [
  { author: 'John Doe', magazine: 'Magazine A', title: 'Article 1' },
  { author: 'Jane Smith', magazine: 'Magazine A', title: 'Article 2' },
  { author: 'John Doe', magazine: 'Magazine B', title: 'Article 3' },
  { author: 'Bob Johnson', magazine: 'Magazine C', title: 'Article 4' },
  { author: 'John Doe', magazine: 'Magazine C', title: 'Article 5' },
  { author: 'John Doe', magazine: 'Magazine A', title: 'Article 6' },
  { author: 'John Doe', magazine: 'Magazine A', title: 'Article 7' } 

]

}

# Creating instances from the hash data

# Create authors
authors = data[:authors].map { |author_data| Author.new(author_data[:name]) }

# Create magazines
magazines = data[:magazines].map { |magazine_data| Magazine.new(magazine_data[:name], magazine_data[:category]) }

# Create articles and associate them with authors and magazines
data[:articles].each do |article_data|
  author = authors.find { |author| author.name == article_data[:author] }
  magazine = magazines.find { |magazine| magazine.name == article_data[:magazine] }
  Article.new(author, magazine, article_data[:title])
end

# Testing the methods

# Test Author#name
puts "Author's name: #{authors[0].name}"

# Test Magazine#name
puts "Magazine's name: #{magazines[0].name}"

# Test Magazine#category
puts "Magazine's category: #{magazines[0].category}"

# Test Magazine.all
puts "All magazines: #{Magazine.all.inspect}"

# Test Article#title
puts "Article title: #{Article.all[0].title}"

# Test Article#author
puts "Author of the article: #{Article.all[0].author.name}"

# Test Article#magazine
puts "Magazine of the article: #{Article.all[0].magazine.name}"

# Test Author#articles
puts "Articles written by author1: #{authors[0].articles.inspect}"

# Test Author#magazines
puts "Magazines contributed by author1: #{authors[0].magazines.inspect}"

# Test Author#add_article
authors[0].add_article(magazines[1], 'Article 6')
puts "New article added by author1"

# Test Author#topic_areas
puts "Topic areas for author1: #{authors[0].topic_areas.inspect}"

# Test Magazine#contributors
puts "Contributors for magazine1: #{magazines[0].contributors.inspect}"

# Test Magazine.find_by_name
found_magazine = Magazine.find_by_name('Magazine B')
puts "Magazine found by name: #{found_magazine.inspect}"

# Test Magazine#article_titles
puts "Article titles for magazine1: #{magazines[0].article_titles.inspect}"

# Test Magazine#contributing_authors
puts "Contributing authors for magazine1: #{magazines[0].contributing_authors.inspect}"






### DO NOT REMOVE THIS
binding.pry

0
