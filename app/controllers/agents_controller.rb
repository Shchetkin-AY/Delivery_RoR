class AgentsController < ApplicationController

  def index
    @agents = Agent.all
  end

  def new
    @agent = Agent.new
  end

  def show
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      redirect_to agents_path
    else
      render :new
    end
  end

  def edit
    @agent = set_agent
  end

  def update
    @agent = set_agent
    if @agent.update(agent_params)
      redirect_to agents_path
    else
      render :edit
    end
  end

  private

  def set_agent
    Agent.find(params[:id])
  end

  def agent_params
    params.require(:agent).permit(:brand, :phone, :inn)
  end

end
