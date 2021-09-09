class Topic::ChoicesController < ApplicationController
  before_action :set_topic_choice, only: %i[ show edit update destroy ]

  # GET /topic/choices or /topic/choices.json
  def index
    @topic_choices = Topic::Choice.all
  end

  # GET /topic/choices/1 or /topic/choices/1.json
  def show
  end

  # GET /topic/choices/new
  def new
    @topic_choice = Topic::Choice.new
  end

  # GET /topic/choices/1/edit
  def edit
  end

  # POST /topic/choices or /topic/choices.json
  def create
    @topic_choice = Topic::Choice.new(topic_choice_params)

    respond_to do |format|
      if @topic_choice.save
        format.html { redirect_to @topic_choice, notice: "Choice was successfully created." }
        format.json { render :show, status: :created, location: @topic_choice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @topic_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic/choices/1 or /topic/choices/1.json
  def update
    respond_to do |format|
      if @topic_choice.update(topic_choice_params)
        format.html { redirect_to @topic_choice, notice: "Choice was successfully updated." }
        format.json { render :show, status: :ok, location: @topic_choice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @topic_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic/choices/1 or /topic/choices/1.json
  def destroy
    @topic_choice.destroy
    respond_to do |format|
      format.html { redirect_to topic_choices_url, notice: "Choice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_choice
      @topic_choice = Topic::Choice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def topic_choice_params
      params.fetch(:topic_choice, {})
    end
end
