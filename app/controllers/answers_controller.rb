class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @question = Answer.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
