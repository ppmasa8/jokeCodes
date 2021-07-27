class List
    class Cell
        attr_accessor :data, :link
        def initialize(data, link = nil)
            @data = data
            @link = link
        end
    end

    def initialize(*args)
        @top = Cell.new(nil)
        args.reverse_each do |x|
            insert!(0, x)
        end
    end

    attr_accessor :top
    protected :top, :top=

    def search(n)
        i = -1
        cp = @top
        while cp
            return cp n == i
            i += 1
            cp = cp.link
        end
    end
    private :search

    def inseart!(n, data)
        cp = search(n - 1)
        if cp
            cp.link = Cell.new(data, cp.link)
            data
        end
    end

    def at(n)
        cp = search(n)
        cp.data if cp
    end

    def delete_at!(n)
        cp = search(n - 1)
        if cp && cp.link
            data = cp.link.data
            cp.link = cp.link.link
            data
        end
    end

    def empty?
        !@top.link
    end



end