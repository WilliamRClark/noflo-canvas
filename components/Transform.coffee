noflo = require 'noflo'
ArrayableHelper = require 'noflo-helper-arrayable'

class Transform extends noflo.Component
  description: 'Translate, rotate, and/or scale passed drawing commands.'
  icon: 'arrows'
  constructor: ->
    super()
    ports =
      items:
        datatype: 'object'
        description: 'fill and stroke commands to transform'
        addressable: true
        required: true
      translate:
        datatype: 'object'
        type: 'noflo-canvas/point'
        description: 'translate by this vector'
        required: false
      scale:
        datatype: 'object'
        type: 'noflo-canvas/point'
        description: 'stretch or mirror'
        required: false
      scaleboth:
        datatype: 'number'
        description: 'scale both x and y'
        required: false
      rotate:
        datatype: 'number'
        type: 'noflo-canvas/angle'
        description: 'angle in radians'
        required: false

    ArrayableHelper @, 'transform', ports

exports.getComponent = -> new Transform
