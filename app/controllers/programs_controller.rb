class ProgramsController < ApplicationController
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
    program = Program.create!(program_params)
    redirect_to program
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
    params.require(:program).permit(:name,:program_type,:difficulty,:score,:author_id,:days,:content)
  end
end