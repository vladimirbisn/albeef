@Styx.Initializers.About =

  initialize: -> $ ->


  index: (data) -> $ ->

    $("ul.tabs li a").live "click", ->
      $("ul.tabs li").removeClass "active"
      $(this).parent().addClass "active"
      $(".about_module").hide()
      $("."+$(this).attr("id")).show()