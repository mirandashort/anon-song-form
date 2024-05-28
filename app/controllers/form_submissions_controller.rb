class FormSubmissionsController < ApplicationController
  before_action :set_form_submission, only: %i[ show edit update destroy ]

  # GET /form_submissions or /form_submissions.json
  def index
    @form_submissions = FormSubmission.all
  end

  # GET /form_submissions/1 or /form_submissions/1.json
  def show
  end

  # GET /form_submissions/new
  def new
    @form_submission = FormSubmission.new
  end

  # GET /form_submissions/1/edit
  def edit
  end

  # POST /form_submissions or /form_submissions.json
  def create
    @form_submission = FormSubmission.new(form_submission_params)

    respond_to do |format|
      if @form_submission.save
        format.html { redirect_to form_submission_url(@form_submission), notice: "Form submission was successfully created." }
        format.json { render :show, status: :created, location: @form_submission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @form_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_submissions/1 or /form_submissions/1.json
  def update
    respond_to do |format|
      if @form_submission.update(form_submission_params)
        format.html { redirect_to form_submission_url(@form_submission), notice: "Form submission was successfully updated." }
        format.json { render :show, status: :ok, location: @form_submission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @form_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_submissions/1 or /form_submissions/1.json
  def destroy
    @form_submission.destroy!

    respond_to do |format|
      format.html { redirect_to form_submissions_url, notice: "Form submission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_submission
      @form_submission = FormSubmission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_submission_params
      params.require(:form_submission).permit(:email, :song_link)
    end
end
