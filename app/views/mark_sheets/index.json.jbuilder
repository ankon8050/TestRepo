json.array!(@mark_sheets) do |mark_sheet|
  json.extract! mark_sheet, :id, :name, :subject_name, :total_number, :student_id
  json.url mark_sheet_url(mark_sheet, format: :json)
end
