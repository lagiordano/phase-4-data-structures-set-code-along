# your code here

class MySet
    attr_accessor :hash  

    def initialize(enumberable = [])
        @hash = {}
        enumberable.each do |value|
            add(value)
        end
    end


    def include?(value)
        hash.has_key?(value)
    end

    def add(value) 
        hash[value] = true
        self
    end

    def delete(value)
        hash.delete(value)
        self
    end

    def size 
        hash.size
    end

    def self.[](*args)
        new(args)
    end

    def clear 
        hash.clear
        self
    end

    def each(&block)
        self.hash.keys.each(&block)
        self
    end

    def inspect 
        "#<#{self.class.name}: {#{self.hash.keys.join(', ')}}>"
    end

end