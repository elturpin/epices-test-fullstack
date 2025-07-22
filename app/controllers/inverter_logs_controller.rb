class InverterLogsController < ApplicationController
  def index
    @number_of_logs = InverterLog.count
    @all_days = InverterLog.all_unique_days
  end

  def import
    file = params[:file]
    if file
      InverterLog.import_csv(file)
      redirect_to inverterLogs_path, notice: "Succed to import CSV"
    else
      redirect_to inverterLogs_path, alert: "No CSV file"
    end
  end
end
