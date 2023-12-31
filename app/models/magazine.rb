class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end


  def self.all
    @@all
  end

  def contributors
    Article.all.select { |article| article.magazine == self }.map { |article| article.author }
  end

  def self.find_by_name(name)
    @@all.find { |magazine| magazine.name == name }
  end

  def article_titles
    Article.all.select { |article| article.magazine == self }.map { |article| article.title }
  end

  def contributing_authors
    authors = contributors.uniq
    contributing_authors = []
  
    authors.each do |author|
      articles_count = contributors.count(author)
      contributing_authors << author if articles_count > 2
    end
  
    contributing_authors
  end


end
