# projects can have many backers


class Project

    attr_reader :title
    attr_accessor :project, :backer

    @@all = []

    # When a Project instance is initialized, it should be initialized with a title.
    def initialize(title)
        @title = title # of project
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        # Backer.new - takes in a Backer instance AND
        # creates a ProjectBacker.new using the Backer instance and the current Project instance(self).
    end

    def self.all
        @@all
    end

    def backers
        pbackers = ProjectBacker.all.select {|pb| pb.project == self}
        pbackers.map {|pb| pb.backer}
    end

    # For the Project class, write a similar method, backers, that returns all backers associated with this Project instance.

end
