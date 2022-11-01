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
