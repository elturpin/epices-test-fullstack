class InverterLogsController < ApplicationController
  def index
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
