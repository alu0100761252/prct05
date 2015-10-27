class Fracc
    attr_reader :num, :denom
    
    def initialize(num, denom)
    raise TypeError, "Denominator may not be zero" if denom.eql? 0 
    d = gcd(num, denom)
    @num = num / d
    @denom =  denom / d
    end
    
    def to_s
	  "#@num/#@denom"
	end
	
    def to_f
	  @num/@denom
	end
	
	def gcd(x,y)
    y == 0 ? x: gcd(y, x%y)
    end
    def lcm(x,y)
    z = x / gcd(x,y) * y
    end 
    
	def == (other)
	  @num == other.num && @denom == other.denom
	end
	
	def abs
	  Fracc.new(@num.abs, @denom)
	end

	def reciprocal
	  Fracc.new(@denom, @num)
	end

	def -@
	  Fracc.new(-@num, @denom)
	end

	def +  (other)
	  m = lcm(@denom, other.denom)
		na = @num * m / @denom 
		nb = other.num * m / other.denom 
		Fracc.new( na + nb, m)
	end

	def -(other)
	  self + (-other)	
	end

	def *(other)
		Fracc.new( @num * other.num, @denom * other.denom)
	end

	def /(other)
	  self * other.reciprocal
	end

	def %(other)
	  #l = @num * other.denom
	  #r = @denom * other.num 
	  #n = l/r 
	  #Fraction.new( l - n * r, @denom * other.denom)
	  Fracc.new( 0, 1)
	end
	
	def multi(x,y)
    z = x * y 
    end 
    
    def sum(x,y)
    z = x + y 
    end 
    
    def rest(x,y)
    z = x - y 
    end 
    
    def div(x,y)
    z = x / y 
    end  

	def <(other)
	  (@num * other.denom) < (@denom * other.num) 
	end

	def >(other)
	  (@num * other.denom) > (@denom * other.num) 
	end

	def <=(other)
	  (@num * other.denom) <= (@denom * other.num) 
	end

	def >=(other)
	  (@num * other.denom) >= (@denom * other.num) 
	end
    
    
    
    
    
    
    
end 
