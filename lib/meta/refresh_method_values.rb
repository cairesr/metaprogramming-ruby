module Meta
  class RefreshMethodValues
    def refresh(options = {})
      defaults[:memory_size] = 100

      self.memory_size = options[:memory_size] if options[:memory_size]
    end
  end
end