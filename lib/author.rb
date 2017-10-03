
class Author
  attr_accessor :name
  def initialize
    @stories = [] # has_many stories interface
  end
  def stories # has_many stories interface
    @stories.dup.freeze
  end

  def add_story(story) # has_many stories interface
    raise AssociationTypeMismatchError, "#{story.class} received, Story expected." if !story.is_a?(Story)
    @stories << story
    story.author = self unless story.author == self
  end

  def bibliography
    # go through all the story instances and grab each story's name.
    self.stories.collect{|s| s.name} # You need all stories to be instances of Story because they must respond to a #
    #@stories.collect(&:name) #=> Symbol to Proc
  end
end

# class Array
#   def push(array) #thi is not a behavior that all arrays should implement
#     raise AssociationTypeMismatchError if obj.class != Story
#     #
#   end
# end
