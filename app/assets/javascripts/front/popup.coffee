class @Popup

  constructor: (@options) ->
    @popup = $(@options.popup)
    @darkLayer = $(@options.darkLayer)
    @popupCloseButton = $(@options.popupCloseButton)
    @hide()

  init: ->
    documentDimention = @getDocumentDimention()
    @darkLayer.attr("style", "width:" + documentDimention.width+"px;"+"height:" + documentDimention.height+"px;")
    @show()

    @popupCloseButton.live "click",() =>
      @hide()

  getDocumentDimention: ->
    width:  $(document).width()
    height: $(document).height()

  show: ->
    @popup.show()

  hide: ->
    @popup.hide()