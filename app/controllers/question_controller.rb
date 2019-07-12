class QuestionController < ApplicationController
  def index
    @questionss = Questions.all
  end

  def show
    @questions = Questions.find(params[:id])
  end

  def new
    @questions = Questions.new
  end

  def edit
    @questions = Questions.find(params[:id])
  end

  def create
    @questions = Questions.new(Questions_params)

    if @questions.save
      redirect_to @questions
    else
      render 'new'
    end
  end

  def update
  @questions = Questions.find(params[:id])

  if @questions.update(Questions_params)
    redirect_to @questions
  else
    render 'edit'
  end
end

  private
  def Questions_params
    params.require(:Questions).permit(:title, :text)
  end
end
