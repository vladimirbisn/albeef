module NewsHelper
  def formatDate(date)
    date.strftime("%m.%d.%y")
  end
  def format483(body)
    body[0..415]+'...'
  end
end
