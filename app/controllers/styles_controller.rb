class StylesController < ApplicationController
  before_action :set_style, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /styles
  def index
    @styles = Style.all

    render json: @styles
  end

  # GET /styles/1
  def show
    render json: @style, include: ['liked_styles.comments', 'styles_created.comments','liked_styles.cocomments.user', 'styles_created.comments.user']

  end

  # POST /styles
  def create
    @style = Style.new(Uploader.upload(style_params))
    # @silstyle = Style.new(style_params)
    @style.user = current_user

    if @style.save
      render json: @style, status: :created, location: @style
    else
      render json: @style.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /styles/1
  def update
    if @style.update(Uploader.upload(style_params))
      render json: @style
    else
      render json: @style.errors, status: :unprocessable_entity
    end
  end

  # DELETE /styles/1
  def destroy
    @style.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style
      @style = Style.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def style_params
      params.require(:style).permit(:type_id, :user, :name, :procedure, :products, :date, :durability, :image, :own, :privacy, :tags, :base64, like_ids:[])
    end
end
