class RoutesController < ApplicationController
  def create
    @train = Train.find(params[:train_id])
#    @route = Train.find(params[:train_id]).routes.create(params[:route])
    train = Train.find(params[:train_id])
    routes = train.routes
    #@route = routes.create(params[:route]) #can't :route?
    @route = routes.create(params[:new_route])
    redirect_to train_path(@train)
  end
end
