Router.configure(
  layoutTemplate: 'layout'
)

Router.map ->
  this.route 'home',
    path: '/'
    template: "home"
  return

  this.route 'posts',
    path: '/posts'
    template: 'posts'
  return