@Styx.Initializers.Welcome =

  initialize: -> $ ->
    $(".slider").mobilyslider
      content: ".sliderContent"
      children: "div"
      transition: "fade"
      animationSpeed: 800
      autoplay: true
      autoplaySpeed: 10000
      pauseOnHover: false
      bullets: false
      arrows: true
      arrowsHide: true
      prev: "prev"
      next: "next"
      animationStart: ->
      animationComplete: ->

  index: (data) -> $ ->
