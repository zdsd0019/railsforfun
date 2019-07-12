class AboutController < ApplicationController
  def about
  end

  def our_services
  end

  def contact
  end

  def test
  end

  def temp
    
  end

  def question
    @question = Question.order(created_at: :desc).all
  end
end
