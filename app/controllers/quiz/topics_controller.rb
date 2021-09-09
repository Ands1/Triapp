class Quiz::TopicsController < ApplicationController
  before_action :set_quiz_topic, only: %i[ show edit update destroy ]

  # GET /quiz/topics or /quiz/topics.json
  def index
    @quiz_topics = Quiz::Topic.all
  end

  # GET /quiz/topics/1 or /quiz/topics/1.json
  def show
  end

  # GET /quiz/topics/new
  def new
    @quiz_topic = Quiz::Topic.new
  end

  # GET /quiz/topics/1/edit
  def edit
  end

  # POST /quiz/topics or /quiz/topics.json
  def create
    @quiz_topic = Quiz::Topic.new(quiz_topic_params)

    respond_to do |format|
      if @quiz_topic.save
        format.html { redirect_to @quiz_topic, notice: "Topic was successfully created." }
        format.json { render :show, status: :created, location: @quiz_topic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz/topics/1 or /quiz/topics/1.json
  def update
    respond_to do |format|
      if @quiz_topic.update(quiz_topic_params)
        format.html { redirect_to @quiz_topic, notice: "Topic was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz/topics/1 or /quiz/topics/1.json
  def destroy
    @quiz_topic.destroy
    respond_to do |format|
      format.html { redirect_to quiz_topics_url, notice: "Topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_topic
      @quiz_topic = Quiz::Topic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_topic_params
      params.fetch(:quiz_topic, {})
    end
end
