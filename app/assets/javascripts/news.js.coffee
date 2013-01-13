@Styx.Initializers.News =

  initialize: -> $ ->

  index: -> $ ->
    paginator = new Paginator
      paginator : '.news_list_block ul'
      iterationElement: '.news_list_block ul li a'
      pageNumbersElement: '.pagination a'
      activePageFlag: 'active'
      ajaxUrl: '/news/render_news_per_page'
      newsPerPage : 10
