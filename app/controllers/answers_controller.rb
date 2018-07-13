class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)

    if @answer.save!
      if (@answer.q_id < 5)
        render api_user_answer_index(@answer.user_id)
      else
        flash[:errors] = @answer.errors.full_messages
      end
    else
      render "/finished"
    end
  end

  def new

  end

  private

  def answer_params
    # get user_id through route - nested route for create, thats all we need?
    params.require(:answer).permit(:answer, :q_id, :user_id)
  end
end
