class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(questions_params)
    if @question.save
      redirect_to question_path(@question), notice: "Pregunta publicada exitosamente"
    else
      render :edit      
    end
  end
  
  def edit
     @question = Question.find(params[:id])
  end

  def update
    @question = question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path, notice: "Tu pregunta ha sido actualizada"
    else
      render :edit, notice: "No se pudo actualizar el registro, intente de nuevo"
    end
  end

  def delete
  end

  def destroy
    
  end

  private
      def questions_params
        params.require(:question).permit(:title, :description, :vote, :id)
    end

end
