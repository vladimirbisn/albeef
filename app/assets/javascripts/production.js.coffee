@Styx.Initializers.Production =

  initialize: -> $ ->
    init_raphael_cow()

    popup = new Popup
      popup :     "#popup"
      darkLayer:  "#popup .dark_layer"
      popupCloseButton: "#popup .close_popup"

    $(window).bind 'anyPieceClicked', ->
      popup.init()

  index: (data) -> $ ->

