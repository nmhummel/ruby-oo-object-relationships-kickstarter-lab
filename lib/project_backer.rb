# However, if we introduce a third class in-between Project and Backer, we can establish a 
# has-many-through relationship _in both directions!

# each instance of ProjectBacker will represent an association between a single backer and a single project. 
# A ProjectBacker, therefore, belongs to one Backer and one Project. 
# ProjectBacker, in essence, acts as a join between Project and Backer. 
# It allows us to maintain the 'has-many' / 'has-many' relationship that the two have.

# SOURCE OF TRUTH!!!

class ProjectBacker

    attr_accessor :project, :backer

    @@all = []

    # When a ProjectBacker instance is initialized, it should be initialized with a 
    # Project instance and a Backer instance. ### CHECK ON THIS ###
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end


end
