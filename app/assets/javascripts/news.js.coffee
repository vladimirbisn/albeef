String::remove_white_space = ->
  @replace /\s/g, ""

convert_date = (date) ->
  if date.length > 0
    date.substr(8, 2) + "." + date.substr(5, 2) + "." + date.substr(0, 4)


switch_page = (new_page) ->
  $(".pagination a.no_click").removeClass().addClass "clickable"
  $(".pagination a.clickable:contains('"+new_page+"')").removeClass().addClass "no_click"

render_list = (data) ->
  $news_block = $(".news_list_block ul")
  $news_block.empty()

  html = []
  for key of data
    break unless data[key].header
    html.push("<li><a href='/news/"+data[key].id+"'>"+data[key].header+"</a><span class='red_med'>"+convert_date(data[key].date)+"</span></li>")
  $news_block.append(html.join(''))

@Styx.Initializers.News =
  initialize: -> $ ->

  index: (data) -> $ ->
    $(".pagination a.clickable").live "click", ->
      new_page = $(this).html().remove_white_space()
      $.ajax
        url: "/news/get_news_per_page"
        type: "post"
        data:
          page: new_page
        error: (er) ->
        success: (obj) ->
          console.info obj
          switch_page(new_page)
          render_list(obj)
