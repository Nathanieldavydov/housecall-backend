class ClientsController < ApplicationController
  before_action :set_client, only: %i[ :show, :edit, :create, :update, :destroy ]

  # GET /clients or /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1 or /clients/1.json
  def show
    render json: @client
  end


  # POST /clients or /clients.json
  def create
    @client = Client.create!(client_params)

    render json: @client
  end

  # PATCH/PUT /clients/1 or /clients/1.json
  def update
    @client.update(client_params)
    render json: @user
  end

  # DELETE /clients/1 or /clients/1.json
  # def destroy
  #   @client.destroy

  #   respond_to do |format|
  #     format.html { redirect_to clients_url, notice: "Client was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.permit(:name, :age, :address, :city, :state, :zipcode, :username, :password, :email)
    end
end
