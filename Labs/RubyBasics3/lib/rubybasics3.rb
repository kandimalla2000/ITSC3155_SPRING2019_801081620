# Ruby Basics Part 3

class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
        @isbn = isbn 
        @price = price
    end
end