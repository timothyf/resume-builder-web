class LayoutSectionsController < InheritedResources::Base

  private

    def layout_section_params
      params.require(:layout_section).permit()
    end

end
