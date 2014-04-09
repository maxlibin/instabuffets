Router.configure(
  layoutTemplate: 'layout'
)

Router.map ->
  this.route 'home',
    path: '/'
    template: "home"

  this.route 'product',
    path: '/product/:_id'
    template: "product"
    data: ->
      _id =  this.params._id

      console.log(_id)
      return _id

  return