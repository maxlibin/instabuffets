Meteor.call "instagram", (err, result)->
  if(err)
    throw err
  Session.set('popouarImg', '<img src="'+result+'" alt="" />')

Template.home.helpers(
  #  get the popular image and place on home page,
  get_instragram_photos: ->
    
    return Session.get('popouarImg')
)
