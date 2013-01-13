require 'date'

module NewsHelper
  def formatDate(date)
    if date.nil?
      date = DateTime.new(1111,1,1,1,1,1)
    else
      date.strftime("%m.%d.%y")
    end
  end

  def get_first_415_symbols(body)
      if body.size > 415
        body[0..415]+'...'
    end
  end

end
