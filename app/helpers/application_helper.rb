module ApplicationHelper

  def _error_messages_for(user=nil)
    render(partial: 'layouts/error_messages', user: user) unless user.blank?
  end


  def score_star score
    puts case score
    when 0
      return image_tag "graystar.png"
    when 1
      return image_tag "star.png"
    when 2
      return (image_tag "star.png")+(image_tag "star.png")
    when 3
      return (image_tag "star.png")+(image_tag "star.png")+(image_tag "star.png")
    when 4
      return (image_tag "star.png")+(image_tag "star.png")+(image_tag "star.png")+(image_tag "star.png")
    when 5
      return (image_tag "star.png")+(image_tag "star.png")+(image_tag "star.png")+(image_tag "star.png")+(image_tag "star.png")
    else
      return "this expert has not been rated"
    end
  end
  
end
