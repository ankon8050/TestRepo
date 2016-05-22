class MarkSheetsController < ApplicationController
  before_action :set_mark_sheet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mark_sheets = MarkSheet.all
    respond_with(@mark_sheets)
  end

  def show
    respond_with(@mark_sheet)
  end

  def new
    @mark_sheet = MarkSheet.new
    respond_with(@mark_sheet)
  end

  def edit
  end

  def create
    @mark_sheet = MarkSheet.new(mark_sheet_params)
    flash[:notice] = 'MarkSheet was successfully created.' if @mark_sheet.save
    respond_with(@mark_sheet)
  end

  def update
    flash[:notice] = 'MarkSheet was successfully updated.' if @mark_sheet.update(mark_sheet_params)
    respond_with(@mark_sheet)
  end

  def destroy
    @mark_sheet.destroy
    respond_with(@mark_sheet)
  end

  def add_student

  end

  private
    def set_mark_sheet
      @mark_sheet = MarkSheet.find(params[:id])
    end

    def mark_sheet_params
      params.require(:mark_sheet).permit(:name, :subject_name, :total_number, :student_id)
    end
end
