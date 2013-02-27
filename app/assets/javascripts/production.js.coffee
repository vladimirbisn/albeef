@Styx.Initializers.Production =

  initialize: -> $ ->
    cowParts = new CowParts

    popup = new Popup
      popup :     "#popup"
      darkLayer:  "#popup .dark_layer"
      popupCloseButton: "#popup .close_popup"

    $(window).bind 'anyPieceClicked', (e, data) ->
      popup.init(data.id)

    $(".fancybox").fancybox
      padding: 0
      openEffect: "elastic"
      openSpeed: 150
      closeEffect: "elastic"
      closeSpeed: 150
      overlay:
        closeClick: true

  index: (data) -> $ ->

