class MenusController < ApplicationController

def index
  @menus = Store.find(params[:store_id]).menus
end

def new
  @menu = Menu.new
end

def create
  @menu = Menu.create
end

def update
end


private

def message_params
end

end
