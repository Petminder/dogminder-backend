class PetsController < OpenReadController
  before_action :set_pet, only: [:update, :destroy]

  # GET /pets
  def index
    if current_user
      @pets = current_user.pets
    else
      @pets = pet.all
    end
    render json: @pets
  end

  # GET /pets/1
  def show
    @pet = Pet.find(params[:id])

    render json: @pet
  end

  # POST /pets
  def create
    @pet = current_user.pets.new(pet_params)
    @pet.save

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH /pets/1
  def update
    if @pet.update(pet_params)
      head :no_content
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy

    head :no_content
  end

  def set_pet
    @pet = current_user.pets.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :dob, :last_rabies, :last_tick, :last_heartworm, :dog_pic, :dog_doc)
  end

  private :set_pet, :pet_params
end
