class Daikichi::RuweisController < Daikichi::BaseController

  def index
    @ruweis = Ruwei.all
  end

  def destroy
    @ruwei = Ruwei.find(params[:id])
    @ruwei.destroy
    redirect_to daikichi_ruweis_path, notice: 'ruwei deleted'
  end

end
