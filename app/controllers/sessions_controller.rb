class SessionsController < ApplicationController
  before_action :set_project
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions or /sessions.json
  def index
    @sessions = @project.sessions
  end

  # GET /sessions/1 or /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @session = @project.sessions.build(started_at: Time.current)
  end


  def quick_new
    @session = @project.sessions.build(started_at: Time.current)
    render turbo_stream: turbo_stream.update("modal",
                                             partial: "sessions/quick_form",
                                             locals: { session: @session })
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions or /sessions.json
  def create
    @session = @project.sessions.build(session_params)
    @session.started_at = Time.current unless @session.started_at
    if @session.save
      redirect_to project_session_path(@project, @session), notice: "Session started!"
    else
      render :_quick_form, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sessions/1 or /sessions/1.json
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to project_path(@project), notice: "Session was successfully updated." }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1 or /sessions/1.json
  def destroy
    @session.destroy!

    respond_to do |format|
      format.html { redirect_to project_path(@project), status: :see_other, notice: "Session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = @project.sessions.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Only allow a list of trusted parameters through.
    def session_params
      params.require(:session).permit(:started_at, :ended_at, :opening_notes, :closing_notes, :name)
    end
end
