class ModelsController < ApplicationController
  def index
    @models = Model.all 
  end

  def show
    @model = Model.find(params[:id])
  end

  def new
    @model = Model.new 
  end

  def create
    @model = Model.new(model_params)
    if @model.save
      redirect_to model_path(@model) 
    else 
      render :new 
    end
  end

  def edit
    @model = Model.find(params[:id])    
  end

  def update
    @model = Model.find(params[:id])
    if @model.update(model_params)
      redirect_to model_path(@model)
    else
      render :edit 
    end 
  end

  def destroy
    @model = Model.find(params[:id])
    @model.destroy 
    redirect_to models_path 
  end 

  private #cannot be called outside of this class 
   def model_params
     params.require(:model).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
   end 
   #security measure to only allow these in 
   #CRUD controller 
end

