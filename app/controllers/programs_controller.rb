class ProgramsController < ApplicationController
  def bodybuilding_index
    @programs=Program.where(program_type: "bodybuilding")
  end

  def olympic_index
    @programs=Program.where(program_type: "olympic")
  end

  def powerlifting_index
    @programs=Program.where(program_type: "powerlifting")
  end

  def strongman_index
    @programs=Program.where(program_type: "strongman")
  end

  private
  def program_params
    params.require(:program).permit(:name,:program_type,:difficulty,:score,:author_id,:days,:content)
  end
end