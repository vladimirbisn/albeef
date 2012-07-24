@Styx.Initializers.About =

  initialize: -> $ ->
    $("body").addClass $.browser


  index: (data) -> $ ->

    $("ul.tabs li").live "click", ->
      $("ul.tabs li").removeClass "active"
      $(this).addClass "active"
      $(".about_module").hide()
      $("."+$(this).attr("id")).show()