require "test_helper"

class InverterLogTest < ActiveSupport::TestCase
  test "creates no entity if csv file is empty" do
    empty_csv = fixture_file_upload "inverters_empty.csv", "text/csv"
    InverterLog.import_csv(empty_csv)

    logs = InverterLog.all

    assert logs.empty?
  end

  test "create one entity if their is one line" do
    one_line_csv = fixture_file_upload "inverters_one.csv", "text/csv"
    InverterLog.import_csv(one_line_csv)

    logs = InverterLog.all

    assert_equal 1, logs.length
    assert_equal 42, logs[0].identifier
  end

  test "create as many entity as line" do
    many_csv = fixture_file_upload "inverters_many.csv", "text/csv"
    InverterLog.import_csv(many_csv)

    logs = InverterLog.all
    logs41 = InverterLog.where(identifier: 41)
    logs42 = InverterLog.where(identifier: 42)

    assert_equal 9, logs.length
    assert_equal 4, logs41.length
    assert_equal 5, logs42.length
  end
end
