class ToDoItemsController < ApplicationController
  before_action :set_to_do_list
  before_action :set_to_do_item, except: :create

  def create
    if @to_do_item = @to_do_list.to_do_items.create(to_do_item_params)
      flash[:notice] = "Se agregó una tarea"
    else
      flash[:alert] = "No se pudo agregar la tarea"
    end
    redirect_to @to_do_list
  end

  def destroy
    @to_do_item = @to_do_list.to_do_items.find(params[:id])
    if @to_do_item.destroy
      flash[:notice] = "Se eliminó la tarea"
    else
      flash[:alert] = "No se pudo borrar la tarea"
    end
    redirect_to @to_do_list
  end

  def complete
    @to_do_item.update(completed: true)
    redirect_to @to_do_list, notice: "Tarea marcada como completada"
  end

  def uncomplete
    @to_do_item.update(completed: false)
    redirect_to @to_do_list, notice: "Tarea marcada como  incompleta"
  end

  private
    def set_to_do_list
      @to_do_list = ToDoList.find(params[:to_do_list_id])
    end

    def set_to_do_item
      @to_do_item = @to_do_list.to_do_items.find(params[:id])
    end

    def to_do_item_params
      params[:to_do_item].permit(:title, :completed, :to_do_list_id)
    end
end
