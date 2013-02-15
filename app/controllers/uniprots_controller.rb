class UniprotsController < ApplicationController
  # GET /uniprots
  # GET /uniprots.json
  def index
    @uniprots = Uniprot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uniprots }
    end
  end

  # GET /uniprots/1
  # GET /uniprots/1.json
  def show
    @uniprot = Uniprot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uniprot }
    end
  end

  # GET /uniprots/new
  # GET /uniprots/new.json
  def new
    @uniprot = Uniprot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uniprot }
    end
  end

  # GET /uniprots/1/edit
  def edit
    @uniprot = Uniprot.find(params[:id])
  end

  # POST /uniprots
  # POST /uniprots.json
  def create
    @uniprot = Uniprot.new(params[:uniprot])

    respond_to do |format|
      if @uniprot.save
        format.html { redirect_to @uniprot, notice: 'Uniprot was successfully created.' }
        format.json { render json: @uniprot, status: :created, location: @uniprot }
      else
        format.html { render action: "new" }
        format.json { render json: @uniprot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uniprots/1
  # PUT /uniprots/1.json
  def update
    @uniprot = Uniprot.find(params[:id])

    respond_to do |format|
      if @uniprot.update_attributes(params[:uniprot])
        format.html { redirect_to @uniprot, notice: 'Uniprot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uniprot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniprots/1
  # DELETE /uniprots/1.json
  def destroy
    @uniprot = Uniprot.find(params[:id])
    @uniprot.destroy

    respond_to do |format|
      format.html { redirect_to uniprots_url }
      format.json { head :no_content }
    end
  end
  
  def new_search 
      redirect_to "http://www.uniprot.org/uniprot/#{params[:uniprot][:uniprot_ac]}"
  end
end
