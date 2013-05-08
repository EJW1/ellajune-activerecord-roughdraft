class LinksController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :edit, :destroy]
  # GET /links
  # GET /links.json
  def index
    Link.update_points
    if params[:link_tag]
     @links = Link.tagged_with(params[:link_tag]).order('points DESC')
    else
     @links = Link.order('points DESC')
    end
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/new
  # GET /links/new.json
  def new
    @link = Link.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/1/edit
  def edit
    @link = Link.find(params[:id])
    if @link.user.id == current_user
      current_user = @link.user
    else
      redirect_to :back, alert: "You can only edit links that you created."
    end
  end

  # POST /links
  # POST /links.json
  def create
    @link = current_user.links.new(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /links/1
  # PUT /links/1.json
  def update
    @link = Link.find(params[:id])

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link = Link.find(params[:id])
    if @link.user.id == current_user
      @link.destroy
      redirect_to root_path
    else
      redirect_to :back, alert: "You can only delete links that you created."
    end
  end
end
