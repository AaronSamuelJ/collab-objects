
class Story
  attr_accessor :name, :author

  def author=(author) # Belongs to author
    raise AssociationTypeMismatchError, "#{author.class} received, Author expected." if !author.is_a?(Author)
    @author = author
    author.add_story(self) unless author.stories.includes?(self)
  end

end
