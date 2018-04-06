class HomeController < ApplicationController
  def index
    @bb_programs = Program.where(program_type: "Bodybuilding")
    @bb_count = @bb_programs.count
    @ol_programs = Program.where(program_type: "Olympic")
    @ol_count = @ol_programs.count
    @sm_programs = Program.where(program_type: "Strongman")
    @sm_count = @sm_programs.count
    @pl_programs = Program.where(program_type: "Powerlifting")
    @pl_count = @pl_programs.count  
  end

  def search
    query=params[:searchTB]
    @data=Program.where("name LIKE ?","%#{query}%").or(Program.where("program_type LIKE ?","%#{query}"))  
  end

end