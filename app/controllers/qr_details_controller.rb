class QrDetailsController < ApplicationController
  def index
    @qr_details = QrDetail.all
  end
  
  def new
    @qr_detail = QrDetail.new
  end

  def create
    @qr_detail = QrDetail.new(qr_params)

    if @qr_detail.save
      redirect_to qr_details_path
    else
      render :new, status: :bad_request
    end
  end

  private

  def qr_params
    params.require(:qr_detail).permit(:name, :detail)
  end
end