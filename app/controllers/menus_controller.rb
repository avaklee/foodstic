class MenusController < ApplicationController

def index
  @menus = Store.find(params[:store_id]).menus
end


def new
  @menu = Menu.new
end


def create
  @menu = Menu.new(menu_params)
  @menu.save
  redirect_to action: 'index'
end

def edit
  @menu = Menu.find(params[:id])
end

def update
  @menu = Menu.find(params[:id])
  menu.update(menu_params) if menu.store_id == current_store.id
    end


def destroy
  menu = Menu.find(params[:id])
    if menu.store_id == current_store.id
        menu.destroy
      end

  end


private
def menu_params
 params.require(:menu).permit(:image,:name,:price).merge(store_id: params[:store_id])
end

end
