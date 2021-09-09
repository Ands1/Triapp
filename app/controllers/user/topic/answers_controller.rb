class User::Topic::AnswersController < ApplicationController
  before_action :set_user_topic_answer, only: %i[ show edit update destroy ]

  # GET /user/topic/answers or /user/topic/answers.json
  def index
    @user_topic_answers = User::Topic::Answer.all
  end

  # GET /user/topic/answers/1 or /user/topic/answers/1.json
  def show
  end

  # GET /user/topic/answers/new
  def new
    @user_topic_answer = User::Topic::Answer.new
  end

  # GET /user/topic/answers/1/edit
  def edit
  end

  # POST /user/topic/answers or /user/topic/answers.json
  def create
    @user_topic_answer = User::Topic::Answer.new(user_topic_answer_params)

    respond_to do |format|
      if @user_topic_answer.save
        format.html { redirect_to @user_topic_answer, notice: "Answer was successfully created." }
        format.json { render :show, status: :created, location: @user_topic_answer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_topic_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/topic/answers/1 or /user/topic/answers/1.json
  def update
    respond_to do |format|
      if @user_topic_answer.update(user_topic_answer_params)
        format.html { redirect_to @user_topic_answer, notice: "Answer was successfully updated." }
        format.json { render :show, status: :ok, location: @user_topic_answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_topic_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/topic/answers/1 or /user/topic/answers/1.json
  def destroy
    @user_topic_answer.destroy
    respond_to do |format|
      format.html { redirect_to user_topic_answers_url, notice: "Answer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_topic_answer
      @user_topic_answer = User::Topic::Answer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_topic_answer_params
      params.fetch(:user_topic_answer, {})
    end
end
