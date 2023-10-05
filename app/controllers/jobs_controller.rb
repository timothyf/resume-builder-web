class JobsController < InheritedResources::Base

  private

    def job_params
      params.require(:job).permit()
    end

end
