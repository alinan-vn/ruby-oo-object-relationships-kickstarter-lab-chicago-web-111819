require 'pry'

class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        first = ProjectBacker.all.select do |value|
            # binding.pry
            value.project == self
        end
        second = first.map do |valuu|
            # binding.pry
            valuu.backer
        end
    end
end 