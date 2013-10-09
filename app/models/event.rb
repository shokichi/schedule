class Event < ActiveRecord::Base
  def sync_google_calender(username,pass)
    require "google_calendar"
    ev = Google::Calendar.new(username: username, password: pass)
    return ev
  end

  
end

