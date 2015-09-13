class FileManipulation
  require "csv"
  attr_accessor :csv_file

  def manipulate
    write_to("output.csv", read_csv.group_by { |header| header[" Designation"] } )
  end

  def write_to(file, modified_data)
    file_object = File.open(file, "w+")
    modified_data.each do |designation, details|
      if designation 
        file_object.puts (details.size == 1 ? "#{designation}" : "#{designation}s")
        details.each { |employee_detail| file_object.puts "#{employee_detail['Name']} (EmpId: #{employee_detail[' EmpId']})" }
        file_object.puts("\n")
      end
    end
  end

  def read_csv
    CSV.read(File.expand_path("../#{csv_file}", __FILE__), headers: true)
  end
end

