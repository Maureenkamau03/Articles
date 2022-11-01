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
