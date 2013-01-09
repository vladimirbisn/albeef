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
    @insertCurrentPartFields(obj)

  insertCurrentPartFields: (obj) ->
    $(@popup).find(".header p").html(obj.name)

    html = ""
    i = 0
    while i < obj.discription.img.length
      html += '<img src="/assets/production/popup/' + obj.discription.img[i] + '">'
      i++
    $(@popup).find(".description .images_block").html(html)

    html = ""
    i = 0
    while i < obj.discription.text.length
      html+= "<p>"+ obj.discription.text[i] + "</p>"
      i++
    $(@popup).find(".description .text_block").html(html)

    $(@popup).find(".recipe .text_block h1").html(obj.recipe.header)
    $(@popup).find(".recipe .text_block .component p:last").html(obj.recipe.components)
    $(@popup).find(".recipe .text_block .cooking p:last").html(obj.recipe.cooking)
    $(@popup).find(".recipe .images_block img").attr("src", "/assets/production/popup/" + obj.recipe.img)

  getDocumentDimention: ->
    width:  $(document).width()
    height: $(document).height()

  show: ->
    @popup.show()

  hide: ->
    @popup.hide()