@Styx.Initializers.About =

  initialize: -> $ ->
    $("#accordion").accordion
      event: "mouseover"

  index: (data) -> $ ->

    $("ul.tabs li").live "click", ->
      $("ul.tabs li").removeClass "active"
      $(this).addClass "active"
      $(".about_module").hide()
      id = $(this).attr("id")
      $("."+id).show()
      $(".tabs_module").removeClass().addClass("tabs_module "+id+"_tab")
      if id == "production" and @is_visited_prod_tab != "true"
        scrollGalleryObj = new scrollGallery(
          start: 0
          autoScroll: true
        )
        @is_visited_prod_tab = "true"

