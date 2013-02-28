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

  @insertCurrentPartFields: (obj, @popup) ->
    $(@popup).find(".header p").html(obj.name)

    html = []
    i = 0
    while i < obj.discription.img.length
      img = '<img src="/assets/production/popup/' + obj.discription.img[i] + '">'
      html.push("<a class='fancybox' href='/assets/production/popup/" + obj.discription.img[i] + "'>" + img + "</a>")
      i++
    $(@popup).find(".description .images_block").html(html.join(''))
    html = []
    i = 0
    while i < obj.discription.text.length
      html.push "<p>"+ obj.discription.text[i] + "</p>"
      i++
    $(@popup).find(".description .text_block").html(html.join(''))

    $(@popup).find(".recipe .text_block h1").html(obj.recipe.header)
    $(@popup).find(".recipe .text_block .component p:last").html(obj.recipe.components)
    $(@popup).find(".recipe .text_block .cooking p:last").html(obj.recipe.cooking)
    $(@popup).find(".recipe .images_block img").attr("src", "/assets/production/popup/" + obj.recipe.img)
    #$(@popup).find(".description .images_block a").attr("href", "/assets/production/popup/" + obj.discription.img[0])

  @convertToNewsDate = (date) ->
    jsDate = new Date( date.substr(0, 10).replace(/-/g, ","))
    # add 0 before day & month in order to match format ##.##.##
    date = ( if (jsDate.getDate() < 10) then ("0" + jsDate.getDate()) else jsDate.getDate() )
    month = ( if (jsDate.getMonth() < 10) then ("0" + (jsDate.getMonth()+1)) else jsDate.getMonth()+1 )

    date + "." + month  + "." + String(jsDate.getFullYear()).substr(2,2)
