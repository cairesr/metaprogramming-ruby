module Methods
  class IcecreamOnMethodMissing
    def method_missing(method, *args)
      self.define_method(method, args) do
        "i'm a #{method}(#{args.join(', ')})"
      end
    end
  end
end