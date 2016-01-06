class AssignmentsController < ApplicationController
  def new
    @assignment = Assignment.new
    @lawcases = Lawcase.all
    @practices = Practice.all
    render :new
  end

  def create
    assignment_params = params.require(:assignment).permit(:practice_id, :lawcase_id)
    @assignment = Assignment.new(assignment_params)
    @practices = Practice.all
    @lawcases = Lawcase.all
     if @assignment.save
      redirect_to practice_path(@assignment.practice_id)
     else
       render :new
     end
  end
end
