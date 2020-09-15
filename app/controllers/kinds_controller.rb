class KindsController < ApplicationController
  def index
    @kinds = Kind.all
  end

  def new
    @kind = Kind.new
  end

  def create
    @kind = Kind.new(kind_params)

    respond_to do |format|
      if @kind.save
        format.html { redirect_to kinds_path, notice: 'Sucesso' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @kind = Kind.find(params[:id])
  end

  def update
    @kind = Kind.find(params[:id])

    respond_to do |format|
      if @kind.update(kind_params)
        format.html { redirect_to kinds_path, notice: 'Sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @kind = Kind.find(params[:id])
    @kind.destroy

    respond_to do |format|
      format.html { redirect_to kinds_path, notice: 'Foi deletado com sucesso!'}
    end
  end

  private

  def kind_params
    params.require(:kind).permit(:description)
  end
end