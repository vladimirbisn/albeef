require 'date'

module NewsHelper
  def formatDate(date)
    if date.nil?
      date = DateTime.new(1111,1,1,1,1,1)
    else
      date.strftime("%m.%d.%y")
    end
  end


end
