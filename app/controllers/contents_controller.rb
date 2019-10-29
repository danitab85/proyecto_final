class ContentsController < InheritedResources::Base

  private

    def content_params
      params.require(:content).permit(:name, :description, :product_id, :image)
    end

end
