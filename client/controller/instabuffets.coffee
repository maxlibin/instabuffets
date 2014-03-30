Meteor.call "instagram", (err, result)->
  if(err)
    throw err
  Session.set('popouarImg', result)


_getInstaTagImg = (_tags)->

  Meteor.call "popImages", _tags, (err, result)->
    if(err)
      throw err
    Session.set('popouarImg', result)


Template.posts.helpers(
  #  get the popular image and place on home page,
  get_instragram_photos: ->
    result = Session.get('popouarImg')
    # _.each(result, (item, index)->
    #   console.log(item)
    # )
    return result
)


Template.home.events
  'keyup input[name="search"]': (e)->
    console.log($(e.target).val())