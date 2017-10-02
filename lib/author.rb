
class Author
  attr_accessor :name
  def initialize
    @stories = []
  end
  def stories
    @stories
  end

  def add_story(story)
    raise AssociationTypeMismatchError if !story.is_a?(Story)
    @stories << story
  end

  def bibliography
    # go through all the story instances and grab each story's name.
    self.stories.collect{|s| s.name}
  end
end

# class Array
#   def push(array) #thi is not a behavior that all arrays should implement
#     raise AssociationTypeMismatchError if obj.class != Story
#     #
#   end
# end
