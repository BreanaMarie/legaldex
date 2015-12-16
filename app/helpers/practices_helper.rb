module PracticesHelper

  def show_button current_user, practice
    for group in Group.where(practice_id: @practice) 
      if group.user_id == @current_user.id
        return false 
      end
    end
  end
  
end
