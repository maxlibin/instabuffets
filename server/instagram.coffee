Future = Npm.require 'fibers/future'
Insta = new Instagram.createClient("", "")

getInstaPop = new Future()

Insta.media.popular (img, err) ->
  getInstaPop.return img

# getpopular_imgs = Meteor._wrapAsync(popular_imgs)
# console.log(getpopular_imgs(Insta))

# create a method for client-side
Meteor.methods (
  instagram: ->

    # add async call from meteor, does not work .....
    # ===============================================
    result = []
    _getInstaPop = getInstaPop.wait()

    _.each(_getInstaPop, (item, index)->
      result.push(item.link)
    )
    return result

)
