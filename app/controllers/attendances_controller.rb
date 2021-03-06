require 'date'

class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  # GET /attendances
  # GET /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new

    @attendance = Attendance.new
    @activities = Activity.where(active: true)

    @names = Array.new

    @activities.each do |act|

      @names << act.name

    end

  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  # POST /attendances.json


  def create

   #Encontrar asociado por codigo y actividad por nombre.

    @attendance = Attendance.new(attendance_params)
    @attendance.date = DateTime.now
    @activities = Activity.all

    @names = Array.new

    @activities.each do |act|

      @names << act.name

    end

    respond_to do |format|
      if Associate.exists?(code: params[:attendance][:associate_code]) and @attendance.save 
        format.html { redirect_to attendances_path, notice: 'Attendance was successfully created.' }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { redirect_to new_attendance_path,  notice: 'El código no está registrado.'}
        format.json { render json: @attendance.errors, status: :unprocessable_entity}

      end
    end
  end

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
  
      params.require(:attendance).permit(:associate_code, :activity_name)
      
    end

end
