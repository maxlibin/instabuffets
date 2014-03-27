instagram = new Instagram.createClient("", "")

get_popuar = instagram.media.popular(
  (img, err)->
    return img
)


console.log(instagram.media)
# create a method for client-side
Meteor.methods (
  instagram: ->
    return get_popuar
  test: ->
    return "asd"
    # return "this is a server method"
)