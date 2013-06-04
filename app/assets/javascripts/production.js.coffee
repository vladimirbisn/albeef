@Styx.Initializers.Production =

  initialize: -> $ ->
    cowParts = new CowParts

    popup = new Popup
      popup :     "#popup"
      darkLayer:  "#popup .dark_layer"
      popupCloseButton: "#popup .close_popup"

    $(window).bind 'anyPieceClicked', (e, data) ->

      $.ajax
        url: '/production/render_animal_part'
        type: "post"
        data:
          part_id: data.id
        error: (er) ->
          alert "ошибка"
          console.info er
        success: (data) =>
          popup.init(data)



    $(".fancybox").fancybox
      padding: 0
      openEffect: "elastic"
      openSpeed: 150
      closeEffect: "elastic"
      closeSpeed: 150
      overlay:
        closeClick: true

  index: (data) -> $ ->

