class Library
  def initialize(name)
    @name = name
    @collection = []
  end

  def add_book(book)
    @collection.push(book)
  end

  def titles
    @collection.map {|book| book.title}
  end

  def authors
    @collection
    .map {|book| book.author}
    .uniq
  end
end
