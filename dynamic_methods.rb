module Meta
  class Computer
    def initialize(data_source)
      @data_source = data_source

      data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
    end

    def self.define_component(name)
      define_method(name) do
        puts "I'm a #{name}"
      end
    end
  end

  class FakeDataSource
    def get_cpu_info
      puts "nothing about cpus"
    end

    def get_mouse_info
      puts "nothing about mouses"
    end
  end
end