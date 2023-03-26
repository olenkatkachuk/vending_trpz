class VendingMachinesController < ApplicationController
  before_action :set_vending_machine, only: %i[ show edit update destroy ]

  # GET /vending_machines or /vending_machines.json
  def index
    @vending_machines = VendingMachine.all
  end

  # GET /vending_machines/1 or /vending_machines/1.json
  def show
  end

  # GET /vending_machines/new
  def new
    @vending_machine = VendingMachine.new
  end

  # GET /vending_machines/1/edit
  def edit
  end

  # POST /vending_machines or /vending_machines.json
  def create
    @vending_machine = VendingMachine.new(vending_machine_params)

    respond_to do |format|
      if @vending_machine.save
        format.html { redirect_to vending_machine_url(@vending_machine), notice: "Vending machine was successfully created." }
        format.json { render :show, status: :created, location: @vending_machine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vending_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vending_machines/1 or /vending_machines/1.json
  def update
    respond_to do |format|
      if @vending_machine.update(vending_machine_params)
        format.html { redirect_to vending_machine_url(@vending_machine), notice: "Vending machine was successfully updated." }
        format.json { render :show, status: :ok, location: @vending_machine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vending_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vending_machines/1 or /vending_machines/1.json
  def destroy
    @vending_machine.destroy

    respond_to do |format|
      format.html { redirect_to vending_machines_url, notice: "Vending machine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vending_machine
      @vending_machine = VendingMachine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vending_machine_params
      params.require(:vending_machine).permit(:machine_code, :machine_name, :capacity, :payment_method, :location)
    end
end
