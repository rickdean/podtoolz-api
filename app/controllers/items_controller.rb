class ItemsController < ApplicationController
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    render json: Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.build(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if @item.update(item_params)
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy

    head :no_content
  end

  def set_item
    @item = current_user.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:text)
  end
end
