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
  return