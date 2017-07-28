class TimeController < ApplicationController
    def display
        @time = Time.now
        binding.pry
    end
end