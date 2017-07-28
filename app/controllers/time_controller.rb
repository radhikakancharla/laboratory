class TimeController < ApplicationController
    def display
        @time = Time.now
    end
end