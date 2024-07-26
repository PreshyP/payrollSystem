class StaffsController < ApplicationController
  before_action :set_staff, only: %i[ show edit update destroy ]

  # GET /staffs or /staffs.json
  def index
    @staffs = Staff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffs }
    end
  end

  # GET /staffs/1 or /staffs/1.json
  def show
    # Define the tax_fee and pension_fee here or fetch them from some configuration
    tax_fee = 25
    pension_fee = 5

    @net_pay = SalaryDeductionCalculator.calculate_net_pay(@staff.total_days_worked, @staff.total_hours, tax_fee, pension_fee)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: { staff: @staff, net_pay: @net_pay } }
    end
  end

  # GET /staffs/new
  def new
    @staff = Staff.new
  end

  # GET /staffs/1/edit
  def edit
  end

  # POST /staffs or /staffs.json
  def create
    @staff = Staff.new(staff_params)

    respond_to do |format|
      if @staff.save
        format.html { redirect_to staff_url(@staff), notice: "Staff was successfully created." }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffs/1 or /staffs/1.json
  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to staff_url(@staff), notice: "Staff was successfully updated." }
        format.json { render :show, status: :ok, location: @staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1 or /staffs/1.json
  def destroy
    @staff.destroy!

    respond_to do |format|
      format.html { redirect_to staffs_url, notice: "Staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Staff record not found"
      redirect_to staffs_path
    end
  end
    

    # Only allow a list of trusted parameters through.
    def staff_params
      params.require(:staff).permit(:staff_id, :name, :lastname, :job_title, :total_hours, :total_days_worked)
      # Assuming salary_deduction attributes are nested under :salary_deduction key
     
    end

    def salary_deduction_params
      params.require(:salary_deduction).permit(:staff_id, :total_days_worked, :hours_worked, :tax_fee, :pension_fee)
    end

