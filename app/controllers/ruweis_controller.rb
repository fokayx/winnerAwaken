class RuweisController < ApplicationController

  def new
    @ruwei = Ruwei.new
  end

  def create
    @ruwei = Ruwei.new(ruwei_params)

    if @ruwei.save
      RuweiMailer.awaken_email(@ruwei).deliver_later
      redirect_to '/', notice: '成功激發五倍魯味覺醒'
    else
      render :new
    end
  end

  private
  def ruwei_params
    params.require(:ruwei).permit(:name, :email)
  end
end
