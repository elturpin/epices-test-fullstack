require "test_helper"

class InverterLogsControllerTest < ActionDispatch::IntegrationTest
  test "should create inverter logs with a csv" do
    many_csv = fixture_file_upload "inverters_many.csv", "text/csv"

    assert_difference "InverterLog.count", 9 do
      post importInverterLogs_url, params: { file: many_csv }
    end

    assert_redirected_to inverterLogs_path
    assert_equal "Succed to import CSV", flash[:notice]
  end

  test "should alert if no csv given" do
    post importInverterLogs_url, params: { file: nil }

    assert_redirected_to inverterLogs_path
    assert_equal "No CSV file", flash[:alert]
  end
end
