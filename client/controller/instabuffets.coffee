Meteor.call "instagram", (err, result)->
  if err
    throw err
  Session.set('popouarImg', result)

Meteor.call "myImg", (err, result)->
  if err
    throw err
  Session.set('getMyImg', result)

# _getInstaTagImg = (_tags)->

#   Meteor.call "popImages", _tags, (err, result)->
#     if(err)
#       throw err
#     Session.set('popouarImg', result)

Template.home.helpers(
  #  get the popular image and place on home page,
  get_instragram_photos: ->
    result = Session.get('getMyImg')
    return result
)


Template.product.helpers(
  get_current_photo: ->
    imgs_array = Session.get('getMyImg')
    # $.inArray(this.params, imgs_array)
    return this.params
)


Template.home.events
  'keyup input[name="search"]': (e)->