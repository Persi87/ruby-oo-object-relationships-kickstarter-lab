class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_array = ProjectBacker.all.select {|projectbacker_instances| projectbacker_instances.project == self}
        project_backer_array.collect {|projectbacker_instances| projectbacker_instances.backer}
    end



end