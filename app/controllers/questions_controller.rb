class QuestionsController < ApplicationController
  def contact
    @questions = questions.all
  end

  def show
    @questions = questions.find(params[:id])
  end

  def new
    @questions = questions.new
  end

  def edit
    @questions = questions.find(params[:id])
  end

  def create
    @questions = questions.new(questions_params)

    if @questions.save
      redirect_to @questions
    else
      render 'new'
    end
  end

  def update
  @questions = questions.find(params[:id])

  if @questions.update(questions_params)
    redirect_to @questions
  else
    render 'edit'
  end
end

  private
  def questions_params
    params.require(:questions).permit(:title, :text)
  end
end
