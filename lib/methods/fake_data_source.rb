module Methods
  class FakeDataSource
    def get_cpu_info(id = nil)
      puts "about cpus"
    end

    def get_mouse_info(id = nil)
      puts "about mouses"
    end

    def get_keyboard_info(id = nil)
      puts "about keyboard"
    end

    def get_cpu_price(id = nil)
      120
    end

    def get_mouse_price(id = nil)
      12
    end

    def get_keyboard_price(id = nil)
      20
    end
  end
end