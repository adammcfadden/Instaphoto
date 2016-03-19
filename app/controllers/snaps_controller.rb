class SnapsController < ApplicationController
  def index
    @snaps = Snap.all
  end

  def new
    @snap = Snap.new
  end

  def create
    @snap = Snap.create(snap_params)
    redirect_to snaps_path
  end


  private

  def snap_params
    params.require(:snap).permit(:photo, :description)
  end
end
