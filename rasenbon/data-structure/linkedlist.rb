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

    def insert!(n, data)
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

    def [](n)
        at(n)
    end

    def []=(n, value
        cp = search(n)
    if cp
      cp.data = value
    end
  end
  
  def append(cp1, cp2)
    if !cp1
      cp2
    else
      Cell.new(cp1.data, append(cp1.link, cp2))
    end
  end
  private :append
  
  def +(other)
    raise TypeError unless other.instance_of?(List)
    ls = List.new
    ls.top.link = append(@top.link, other.top.link)
    ls
  end
  
  def *(n)
    ls = List.new
    n.times do
      ls.top.link = append(@top.link, ls.top.link)
    end
    ls
  end
  
  def each
    cp = @top.link
    while cp
      yield cp.data
      cp = cp.link
    end
    self
  end
  
  def to_a
    a = []
    each do |x| a.push(x) end
    a
  end
  
  def to_s
    "(" << to_a.join(",") << ")"
  end
  
  def inspect
    sprintf("#<List:%#x>", self.object_id)
  end


end