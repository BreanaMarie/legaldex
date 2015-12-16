module LawcasesHelper

  # shows edit buttons for users who are working on the case only
  def case_editor current_user, lawcase
    for handling in Handling.where(lawcase_id: @lawcase) 
      if handling.user_id == @current_user.id
        return true 
      end
    end
  end

end
