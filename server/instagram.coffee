Future = Npm.require 'fibers/future'
Insta = new Instagram.createClient("", "")



# getpopular_imgs = Meteor._wrapAsync(popular_imgs)
# console.log(getpopular_imgs(Insta))

# create a method for client-side
Meteor.methods (
  instagram: ->
    
    getInstaPop = new Future()

    Insta.media.popular (img, err) ->
      getInstaPop.return img

    # add async call from meteor, does not work .....
    # ===============================================
    _getInstaPop = getInstaPop.wait()
    return _getInstaPop

  popImages: (_tags)->
    
    getInstaTagImg = new Future()
    # get the popular images by tags
    # ==============================
    Insta.tags.media _tag, max_id: 5, (img, err) ->
      getInstaTagImg.return img

    _getInstaTagImg = getInstaTagImg.wait()
    return _getInstaTagImg
)
