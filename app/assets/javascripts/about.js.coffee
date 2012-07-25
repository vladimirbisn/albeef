@Styx.Initializers.About =

  initialize: -> $ ->
    $("body").addClass $.browser

    scrollGalleryObj = new scrollGallery(
      start: 0
      autoScroll: true
    )


  index: (data) -> $ ->

    $("ul.tabs li").live "click", ->
      $("ul.tabs li").removeClass "active"
      $(this).addClass "active"
      $(".about_module").hide()
      $("."+$(this).attr("id")).show()