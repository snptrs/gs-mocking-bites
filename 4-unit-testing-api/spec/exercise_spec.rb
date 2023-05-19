require 'exercise'


# To test this
RSpec.describe TimeError do
  it "calls an API to check the time" do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"78.149.118.82","datetime":"2023-05-19T15:59:48.776724+01:00","day_of_week":5,"day_of_year":139,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1684508388,"utc_datetime":"2023-05-19T14:59:48.776724+00:00","utc_offset":"+01:00","week_number":20}')
    time = Time.new("2023-05-19T14:59:49.776724+00:00")
    time_error = TimeError.new(requester_dbl)
    expect(time_error.error(time)).to eq -1
  end
end
