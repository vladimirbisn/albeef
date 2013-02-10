class @Paginator

  constructor: (@options) ->
    @paginator =          $(@options.paginator)
    @iterationElement =   $(@options.iterationElement)
    @pageNumbersElement = $(@options.pageNumbersElement)
    @activePageFlag =     @options.activePageFlag
    @newsPerPage =        @options.newsPerPage
    @ajaxUrl =            @options.ajaxUrl
    @init()

  init: ->
    @pageNumbersElement.on "click",(el) =>
      clickedPageNumber = $(el.currentTarget)

      $.ajax
        url: @ajaxUrl
        type: "post"
        data:
          page: clickedPageNumber.html()
          per_page: @newsPerPage
        error: (er) ->
          alert "error"
        success: (data) =>
          @renderNewList(data)
          @switchActivePageNumber(clickedPageNumber)

  renderNewList: (data) ->
    html = Helpers.renderListHtml(data)
    @paginator.empty().append(html)

  switchActivePageNumber: (newPageNumber) ->
    @pageNumbersElement.removeClass "active"
    newPageNumber.addClass "active"

