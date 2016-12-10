# Create an class that one of your favorite existing web applications might have in their codebase

class Instagram

  # define properties
  attr_accessor :images, :like, :comment

  # define initializer
  def initialize(images, like, comment)
    @images = images
    @like = like
    @comment = comment
  end

  # define all of Instagram's methods
  def like_image
      @like += 1
  end

  def post_image
      @images += 1
  end

  def new_comment(string)
    @comment + ", " + string
  end

end
