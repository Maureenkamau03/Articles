# Please copy/paste all three classes into this file to submit your solution!
# author class
class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end

  def name
    @name
  end

  def articles
    Article.all.filter do |article|
      article.author == self
  end

  def magazines
    arrmagazine_author = Article.all.filter do |article|
      article.author == self
    end
    arrmagazine_author.map.uniq do |article|
      article.magazine
    end
  end

  def add_article(magazine, title)
    Article.new(magazine, title)
  end

  def topic_areas
    arr = Article.all.select do |mag|
      article.author == self
    end
    arr.map.uniq do |mag|
      article.magazine.category
    end
  end

end

# magazine class
class Magazine
  attr_accessor :name, :category
@@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end
  def name
    @name
  end
  def category
    @category
  end

  def self.all 
    @@all
  end

  def contributors
    arr_article_magazine = Article.all.filter do |article|
      article.magazine == self
    end
    arr_article_magazine.map.uniq do |article|
      article.author
    end
  end

  def find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name = name
  end

  def article_titles
    arr_titles = Article.all.select do |article|
      article.magazine == self
    end
    arr_titles.map do |article|
      article.title
    end
  end
  def contributing_authors
    arr_contributors = contributors.sum
    arr_contributors.filter do |author, sum|
      sum > 2
    end
  end


end


# articles class
class Article
  attr_reader :author, :magazine, :title

  @@all = []
  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self

  def title 
    @title
  end

  def self.all
    @@all
  end

  def author
    @author
  end
  def magazine
    @magazine
  end

end

