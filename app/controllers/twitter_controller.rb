class TwitterController < ApplicationController

  def show
    @post=Toukou.find_by(params[:id])
    render "show"
  end

  def new
    render "new"
  end

  def create
    Toukou.create!(naiyou:params[:content],riyousha_bangou:current_riyousha.id)
    redirect_to controller: :twitter, action: :index
  end

  def index
    @posts=Toukou.all
    render "index"
  end


  def edit
    @post=Toukou.find_by(id:params[:id])
    render "edit"
  end

  def update
    Toukou.find_by(id:params[:id]).update!(naiyou:params[:naiyou])
    redirect_to controller: :twitter, action: :index
  end

  def destroy
    Toukou.find_by(id:params[:id]).destroy!
    redirect_to controller: :twitter, action: :index
  end

  def favorite
    Okiniiri.create!(riyousha_bangou:params[:user_id],toukou_bangou:params[:id])
    redirect_to controller: :twitter, action: :index
  end
end
