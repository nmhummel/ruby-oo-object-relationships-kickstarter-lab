# backers can back many projects

require 'pry'

class Backer

    attr_reader :name
    attr_accessor :project, :backer, :title

    # When a Backer instance is initialized, it should be initialized with a name.
    def initialize(name)
        @name = name    # of backer
    end


    # an instance method that accepts a project as an argument and creates a ProjectBacker, 
    # associating the project with this backer

    def back_project(project)  # takes in a Project instance
        ProjectBacker.new(project, self)  
        # create a ProjectBacker instance using the provided Project instance AND 
        # self = the current Backer instance (the instance this method was called on)
    end

    
    def backed_projects  # ProjectBakcer already has project and backer as arguments
        backerps = ProjectBacker.all.select {|bps| bps.backer == self}
        backerps.collect {|bps| bps.project}
    end

    # returns all the projects associated with this Backer instance. 
    # Since Project instances are not directly associated with Backer instances, 
    # you will need to get this information _through the ProjectBacker class.

    # binding.pry
    # puts "Let us pry."
end
