# Ruby Basics Part 3

class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
        raise ArgumentError if isbn.length == 0
        raise ArgumentError if price <= 0
        @isbn = isbn 
        @price = price
    end
    def price_as_string
    "$%.2f" % @price
    end
end