class ProgramsController < ApplicationController
 before_action :authenticate_user!, except: [:bodybuilding_index,:olympic_index, :powerlifting_index, :strongman_index, :show]

  def bodybuilding_index
    @programs=Program.where(program_type: "Bodybuilding")
    layout false
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
     @author_name=User.find(@program.user_id).username
     @user_can_edit = current_user && (current_user.id == @program.user_id || current_user.admin?)
     @user_can_delete = current_user && current_user.admin?
     @user_can_vote = current_user && (current_user.id != @program.user_id && !Score.exists?(:user_id => current_user.id)) || current_user.admin?
  end

  def upvote
    if (current_user && (current_user.id != @program.user_id && !Score.exists?(:user_id => current_user.id)) || current_user.admin?)
      object=Score.new(:user_id => current_user.id,:program_id => params[:id], :direction => 1)
      object.save
    end
  end

  def downvote
    if (current_user && (current_user.id != @program.user_id && !Score.exists?(:user_id => current_user.id)) || current_user.admin?)
      object=Score.new(:user_id => current_user.id,:program_id => params[:id],:direction => -1)
      object.save
    end
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    program = Program.find(params[:id])
    if (current_user && (current_user.id == program.user_id || current_user.admin?))
      program.update!(program_params)
      redirect_to program
    end
  end

  def create
    @program=current_user.programs.new(program_params)
    @program.score=0;
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
  def score_params
    params.require(:score).permit(:user_id,:program_id,:direction)
  end

end