@Styx.Initializers.About =

  initialize: -> $ ->
    $("#accordion").accordion
      event: "click"
      header: "h3"
      collapsible: true
      active: false

  index: (data) -> $ ->

    $("ul.tabs li").live "click", ->
      $("ul.tabs li").removeClass "active"
      $(this).addClass "active"
      $(".about_module").hide()
      id = $(this).attr("id")
      $("."+id).show()
      $(".tabs_module").removeClass().addClass("tabs_module "+id+"_tab")
     # Temporary hack
      if id == "production" && $.browser.name == "msie"
        $(".meat_production_accordion .two_blocks ul").hide()
        $(".about_scheme").show()

