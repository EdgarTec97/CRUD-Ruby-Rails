class ImagesController < ApplicationController
    before_action :get_image, only: [:update, :edit, :show]
    #REST API
    def create
        # render plain: params[:image].inspect
        data = image_params
        data[:likes_counter] = 0

        @image = current_user.images.new data

        if @image.save
            return redirect_to @image
        end
        render :new
    end

    def update
        #@image = get_image(params[:id])

        @image.update image_params
        redirect_to @image
    end
    def destroy
        Image.destroy(params[:id])
        redirect_to home_index_path
    end
    #FRONTEND
    def index
        @images = Image.where user_id: current_user.id
    end

    def new
        @image = Image.new
    end

    def edit
        #@image = get_image(params[:id])
    end

    def show
        #@image = get_image(params[:id]) # Image.find(params[:id])
    end

    private
        def image_params
            params.require(:image).permit(:description, :picture)
        end
        def get_image
            @image = Image.find params[:id]
        end
end
