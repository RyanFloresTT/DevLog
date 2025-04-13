class EntriesController < ApplicationController
  before_action :set_project
  before_action :set_session
  before_action :set_entry, only: %i[ show edit update destroy ]

  # GET /entries or /entries.json
  def index
    @entries = Entry.all
  end

  # GET /entries/1 or /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @session = @project.sessions.find(params[:session_id])
    @entry = @session.entries.find(params[:id])
  end

  # POST /entries or /entries.json
  def create
    @entry = @session.entries.build(entry_params)

    if @entry.save
      redirect_to project_session_path(@project, @session), notice: 'Update added!'
    else
      redirect_to project_session_path(@project, @session), alert: 'Could not add update.'
    end

  end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    if @entry.update(entry_params)
      redirect_to project_session_path(@project, @session),
                  notice: "Entry was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1 or /entries/1.json
  def destroy
    @entry.destroy!

    respond_to do |format|
      format.html { redirect_to project_session_path(@project, @session), status: :see_other, notice: "Entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_session
      @session = @project.sessions.find(params[:session_id])
    end

  # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = @session.entries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_params
      params.require(:entry).permit(:response)
    end
end
