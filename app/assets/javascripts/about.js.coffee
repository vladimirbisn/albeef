@Styx.Initializers.About =

  initialize: -> $ ->
    $("#accordion").accordion
      event: ""
      header: "h3"
      collapsible: true
      active: false

     $(".meat_production_accordion h3").click(->
        $(this).next().toggle('slow')
        false
      ).next().hide()


  index: (data) -> $ ->
    # tabs switching module
    $("ul.tabs li").on "click", ->
      $("ul.tabs li").removeClass "active"
      $(this).addClass "active"
      $(".about_module").hide()
      id = $(this).attr("id")
      $("."+id).show()
      $(".tabs_module").removeClass().addClass("tabs_module "+id+"_tab")

     # Temporary hack for ie
      if id == "production" && $.browser.name == "msie"
        $(".meat_production_accordion .two_blocks ul").hide()
        $(".about_scheme").show()

