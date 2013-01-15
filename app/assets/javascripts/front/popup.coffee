class @Popup

  constructor: (@options) ->
    @popup = $(@options.popup)
    @darkLayer = $(@options.darkLayer)
    @popupCloseButton = $(@options.popupCloseButton)
    @hide()

  init: (id)->
    documentDimention = @getDocumentDimention()
    @darkLayer.attr("style", "width:" + documentDimention.width+"px;"+"height:" + documentDimention.height+"px;")
    @renderPopup(id)
    @show()

    @popupCloseButton.live "click",() =>
      @hide()

    @popup.find(".dark_layer").live "click",() =>
      @hide()

  renderPopup:(id) ->
    obj  = PopupData.getPartById(id)
    Helpers.insertCurrentPartFields(obj, @popup)

  getDocumentDimention: ->
    width:  $(document).width()
    height: $(document).height()

  show: ->
    @popup.show()

  hide: ->
    @popup.hide()