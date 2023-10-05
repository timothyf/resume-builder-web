class ResumesController < ApplicationController
  before_action :set_resume, only: %i[ show get_html edit update destroy ]

  def index
    @resumes = Resume.all
  end

  def show
  end

  def get_html
  end

  def new
    @resume = Resume.new
  end

  def edit
  end

  def create
    @resume = Resume.new(resume_params)

    respond_to do |format|
      if @resume.save
        format.html { redirect_to resume_url(@resume), notice: "Resume was successfully created." }
        format.json { render :show, status: :created, location: @resume }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to resume_url(@resume), notice: "Resume was successfully updated." }
        format.json { render :show, status: :ok, location: @resume }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resume.destroy

    respond_to do |format|
      format.html { redirect_to resumes_url, notice: "Resume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resume_params
      params.fetch(:resume, {})
    end
end
