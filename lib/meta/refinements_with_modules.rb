module Meta
  module Printable
    def print
      puts "printable#print method"
    end

    def prepare_cover
      puts "prepare_cover method"
    end
  end

  module Document
    def print_to_screen
      prepare_cover
      format_for_screen
      print
    end

    def format_for_screen
      puts "method format_for_screen"
    end

    def print
      puts "document#print method"
    end
  end

  class Book
    include Printable
    include Document
  end

  #Book.new.print
end