class RuweisController < ApplicationController
  def index
    @ruweis = Ruwei.all
    @ruwei = Ruwei.new
  end

  def new
    @ruwei = Ruwei.new
  end

  def create
    @ruwei = Ruwei.new(ruwei_params)

    if @ruwei.save
      redirect_to root_path, notice: '成功成為魯味'
    end
  end

  private
  def ruwei_params
    params.require(:ruwei).permit(:name, :email)
  end
end
