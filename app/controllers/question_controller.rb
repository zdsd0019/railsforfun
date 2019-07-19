class QuestionController < ApplicationController
  def index
    @question = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(Question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
  @question = Question.find(params[:id])

  if @question.update(Question_params)
    redirect_to @question
  else
    render 'edit'
  end
end

  private
  def Question_params
    params.require(:Question).permit(:title, :text)
  end
end
