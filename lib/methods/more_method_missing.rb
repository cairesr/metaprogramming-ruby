module Methods
  class MoreMethodMissing
    def method_missing(method, *args)
      puts "you called: #{method}(#{args.join(', ')})"
      puts "(you also passed a block)" if block_given?
    end
  end
end