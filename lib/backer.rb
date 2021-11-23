require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_array = ProjectBacker.all.select {|projectbacker_instances| projectbacker_instances.backer == self}
        project_backer_array.collect {|projectbacker_instances| projectbacker_instances.project}
    end
    
end