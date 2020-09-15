class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to contacts_path, notice: 'Sucesso' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    respond_to do |format|
      if @contact.update(contacts_params)
        format.html { redirect_to contacts_path, notice: 'Sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_path, notice: 'Foi deletado com sucesso!' }
    end
  end

  private

  def contacts_params
    params.require(:contact).permit(:name, :address, :phone, :kind_id)
  end
end