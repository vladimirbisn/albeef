class @Popup

  constructor: (@options) ->
    @popup = $(@options.popup)
    @darkLayer = $(@options.darkLayer)
    @popupCloseButton = $(@options.popupCloseButton)
    @hide()

  init: (data)->
    documentDimention = @getDocumentDimention()
    @darkLayer.attr("style", "width:" + documentDimention.width+"px;"+"height:" + documentDimention.height+"px;")
    @renderPopup(data)
    @show()

    @popupCloseButton.on "click",() =>
      @hide()

    @popup.find(".dark_layer").on "click",() =>
      @hide()

  renderPopup:(obj) ->
    Helpers.insertCurrentPartFields(obj, @popup)

  getDocumentDimention: ->
    width:  $(document).width()
    height: $(document).height()

  show: ->
    @popup.show()

  hide: ->
    @popup.hide()