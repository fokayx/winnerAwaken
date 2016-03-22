class Daikichi::ListsController < Daikichi::BaseController
  
  def export
    @winners = Ruwei.all
    respond_to do |export|
      export.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="winners.xlsx"'
      }
    end
  end
end
