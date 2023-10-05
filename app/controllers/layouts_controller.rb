class LayoutsController < InheritedResources::Base

  private

    def layout_params
      params.require(:layout).permit()
    end

end
