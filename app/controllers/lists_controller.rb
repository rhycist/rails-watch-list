class ListsController < ApplicationController
  # before_action :set_list, only: [:show, :edit, :updated, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(list_params)
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
