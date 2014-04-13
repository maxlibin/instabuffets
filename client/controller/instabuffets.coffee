Meteor.call "instagram", (err, result)->
  if err
    throw err
  Session.set('popouarImg', result)

Meteor.call "myImg", (err, result)->
  if err
    throw err
  Session.set('getMyImg', result)

Template.home.helpers(
  #  get the popular image and place on home page,
  get_instragram_photos: ->
    result = Session.get('getMyImg')
    return result
)

Template.product.helpers(
  get_current_photo: ->
    Meteor.call "product", this._id, (err, result)->
      if err
        throw err
      Session.set('currentPhoto', result)

    _result = Session.get('currentPhoto');
    return _result
)


Template.home.events
  'keyup input[name="search"]': (e)->