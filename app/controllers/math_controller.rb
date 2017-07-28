class MathController < ApplicationController
    def root
        @orig = params[:x].to_i
        @square =params[:x].to_i ** 0.5
    end
    def showadd
        
    end
    def computeadd
        #binding.pry
        @x = params[:x].to_f
        @y = params[:y].to_f
        @sum = @x + @y
        render 'showadd'
    end
    def get_ransum
        render 'ransum'
    end
    def post_ransum
        count=params[:count].to_i
        start, stop = params[:range].split(',').map { |x| x.to_i}
     
        @numbers=count.times.map{rand(start..stop)}
        @sum = @numbers.sum
        render 'ransum'
    end
    def get_duplicatecounter
        render'duplicatecounter'
    end
    def post_duplicatecounter
        str = params[:numbers].to_s
        n = str.split(',').map{|x| x.to_i}
        #@d = n.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
        
        @counts = Hash.new(0)
        #@res = Hash.new(0)
        n.each { |name| @counts[name] += 1 }
        #binding.pry
        
        render'duplicatecounter'
    end
end

