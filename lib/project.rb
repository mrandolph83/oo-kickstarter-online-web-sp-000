class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
  # has many backers related to the title of the project
    @backers = []
  end

  def add_backer(backer)
  # Adds bacler to the project
    @backers.push(backer)
    # Adds protect to the backer using the back_project method from the
   #  Backer class unless they're already on it.
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end
