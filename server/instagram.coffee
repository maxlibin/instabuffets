Future = Npm.require 'fibers/future'
Insta = new Instagram.createClient("97f1b15fd1d4410da6beb1808af21bdf", "94b4343094c24b139b3fbda61c72c5cf")
_user = "maxlibin"

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

  myImg: ->
    getId = new Future()
    getMyImg = new Future()

    Insta.users.search(_user, (user, err)->
      getId.return user
    )
    _id = getId.wait()[0].id

    
    Insta.users.media(_id, count:15, (img, err, pagi)->
      getMyImg.return img
    )
    _myImg = getMyImg.wait()
    return _myImg
)
