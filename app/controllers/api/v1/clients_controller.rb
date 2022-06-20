class Api::v1::ClientsController < ApiController
  before_action :set_client, only: [:show]

  #例外処理
  rescue_from Exception, with: :render_status_500
  rescue_from ActiveRecord::RecordNotFound, with: :render_status_404

  #一覧
  def index
    @clients = Client.all
    render json: @clients
  end

  #詳細
  def show
    render json: @client
  end

  private

    def set_client
      @client = Client.find(params[:id])
    end

    def render_status_404(exception)
      render json: { errors: [exception] }, status: 404
    end

    def render_status_500(exception)
      render json: { errors: [exception] }, status: 500
    end
end
