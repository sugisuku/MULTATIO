class RoutesController < ApplicationController
  def create
    @train = Train.find(params[:train_id])
#    @route = Train.find(params[:train_id]).routes.create(params[:route])
    train = Train.find(params[:train_id])
    routes = train.routes
    routes.create(params[:new_route]) #can't :route?
    redirect_to train_path(@train)
  end
end
