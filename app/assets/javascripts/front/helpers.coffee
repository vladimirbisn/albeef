class @Helpers
  @renderListHtml: (data) ->
    html = []
    i=0
    for row of data
      break unless data[row].header

      html.push "<li>" +
                    "<a href='/news/"+data[row].id+"'>"+data[row].header+"</a>" +
                    "<span class='red_med'>"+@convertToNewsDate(data[row].date)+"</span>"+
                "</li>"

    html.join('')

  @convertToNewsDate = (date) ->
    jsDate = new Date( date.substr(0, 10).replace(/-/g, ","))
    # add 0 before day & month in order to match format ##.##.##
    date = ( if (jsDate.getDate() < 10) then ("0" + jsDate.getDate()) else jsDate.getDate() )
    month = ( if (jsDate.getMonth() < 10) then ("0" + (jsDate.getMonth()+1)) else jsDate.getMonth()+1 )

    date + "." + month  + "." + String(jsDate.getFullYear()).substr(2,2)
