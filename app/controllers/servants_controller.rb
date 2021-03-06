class ServantsController < ProtectedController
  before_action :set_servant, only: [:show, :update, :destroy]

  # GET /servants
  def index
    @servants = current_user.servants.all

    render json: @servants
  end

  # GET /servants/1
  def show
    render json: @servant
  end

  # POST /servants
  def create
    @servant = current_user.servants.build(servant_params)

    if @servant.save
      render json: @servant, status: :created
    else
      render json: @servant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /servants/1
  def update
    if @servant.update(servant_params)
      render json: @servant
    else
      render json: @servant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /servants/1
  def destroy
    @servant.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_servant
    @servant = current_user.servants.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def servant_params
    params.require(:servant).permit(:name, :sclass, :rarity, :level, :atk, :hp)
  end
end
