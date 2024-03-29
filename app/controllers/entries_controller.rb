class EntriesController < ApplicationController
  before_action :set_entry, only: [ :edit, :update, :destroy]
  before_action :set_blog, only: [ :edit, :new, :create, :update, :destroy]

  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.where(:blog_id => params[:blog_id])
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  # POST /entries.json
  def create

    @entry = Entry.new(entry_params)
    @entry.blog_id = params[:blog_id]
    @entry.save

    respond_to do |format|
      if @entry.save
        format.html { redirect_to blog_entries_url, notice: 'Entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: blog_entries_url }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to blog_entries_url, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to blog_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def set_blog
      @blog = Blog.find(params[:blog_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:title, :sub_title, :text, :pictures, :videos, :blog_id)
    end
end
