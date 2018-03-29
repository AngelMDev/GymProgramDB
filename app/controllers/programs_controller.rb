class ProgramsController < ApplicationController
 before_action :authenticate_user!, except: [:bodybuilding_index,:olympic_index, :powerlifting_index, :strongman_index, :show]

  def bodybuilding_index
    @programs=Program.where(program_type: "Bodybuilding")
  end

  def olympic_index
    @programs=Program.where(program_type: "Olympic")
  end

  def powerlifting_index
    @programs=Program.where(program_type: "Powerlifting")
  end

  def strongman_index
    @programs=Program.where(program_type: "Strongman")
  end

  def show
     @program=Program.find(params[:id])
  end

  def create
    @program=current_user.programs.new(program_params)
    if @program.save
      redirect_to @program
    end
  end
  
  def new
    @program = Program.new
  end

  def destroy
    program = Program.find(params[:id])
    program.destroy!
    redirect_to '/'
  end

  private
  def program_params
    params.require(:program).permit(:name,:program_type,:difficulty,:score,:user_id,:days,:content)
  end
end