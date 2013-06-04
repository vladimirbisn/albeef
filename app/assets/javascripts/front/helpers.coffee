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
    obj = obj[0]

    $(@popup).find(".header p").html(obj.part_title)

    html = []
    i = 0

    if obj.part_img_url1.url
      img = "<a class='fancybox' href='" + obj.part_img_url1.url + "'>" + "<img src='" + obj.part_img_url1.url + "'>" + "</a>"
      html.push(img)

    if obj.part_img_url2.url
      img = "<a class='fancybox' href='" + obj.part_img_url2.url + "'>" + "<img src='" + obj.part_img_url2.url + "'>" + "</a>"
      html.push(img)

    $(@popup).find(".description .images_block").html(html.join(''))

    $(@popup).find(".description .text_block").html("<p>"+ obj.top_description.replace("<br>", "<br><br>") + "</p>")

    $(@popup).find(".recipe .text_block h1").html(obj.dish_title)

    $(@popup).find(".recipe .text_block .component p:last").html(obj.ingredients)
    $(@popup).find(".recipe .text_block .cooking p:last").html(obj.preparation)

    $(@popup).find(".recipe .images_block img").attr("src", obj.dish_img_url.url)

  @convertToNewsDate = (date) ->
    jsDate = new Date( date.substr(0, 10).replace(/-/g, ","))
    # add 0 before day & month in order to match format ##.##.##
    date = ( if (jsDate.getDate() < 10) then ("0" + jsDate.getDate()) else jsDate.getDate() )
    month = ( if (jsDate.getMonth() < 10) then ("0" + (jsDate.getMonth()+1)) else jsDate.getMonth()+1 )

    date + "." + month  + "." + String(jsDate.getFullYear()).substr(2,2)
