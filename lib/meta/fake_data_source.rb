module Meta
  class FakeDataSource
    def get_cpu_info
      puts "nothing about cpus"
    end

    def get_mouse_info
      puts "nothing about mouses"
    end

    def get_keyboard_info
      puts "nothing about keyboard"
    end
  end
end