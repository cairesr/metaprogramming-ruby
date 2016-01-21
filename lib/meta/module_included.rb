module Meta
  module ModuleIncluded
    module Printable
      def print
        'printable#print method'
      end

      def prepare_cover
        puts 'prepare_cover method'
      end
    end

    module Document
      def print_to_screen
        prepare_cover
        format_for_screen
        print
      end

      def format_for_screen
        'method format_for_screen'
      end

      def print
        'document#print method'
      end
    end

    class Book
      include Document
      include Printable
    end
  end
end