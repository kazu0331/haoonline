class ImagesController < ApplicationController
    def create
      Image.create(images_params)
      redirect_to admins_path
    end

  private

    def images_params
        params.require(:image).permit(:image, :product_id, :status)
    end
end

