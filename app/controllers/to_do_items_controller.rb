class ToDoItemsController < ApplicationController
  before_action :set_to_do_list

  def create
    @to_do_item = @to_do_list.to_do_items.create(to_do_item_params)
    redirect_to @to_do_list
  end

  private
    def set_to_do_list
      @to_do_list = ToDoList.find(params[:to_do_list_id])
    end

    def to_do_item_params
      params[:to_do_item].permit(:title, :completed, :to_do_list_id)
    end
end
