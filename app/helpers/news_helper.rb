require 'date'

module NewsHelper
  def formatDate(date)
    if date.nil?
      date = DateTime.new(1111,1,1,1,1,1)
    end
    date.strftime("%m.%d.%y")
  end

  def format483(body)
    body[0..415]+'...'
  end
end
