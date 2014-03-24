// if (Meteor.isClient) {
//   Template.hello.greeting = function () {
//     return "Welcome to instabuffets.";
//   };
//
//   Template.hello.events({
//     'click input': function () {
//       // template data, if any, is available in 'this'
//       if (typeof console !== 'undefined')
//         console.log("You pressed the button");
//     }
//   });
// }

// if (Meteor.isServer) {
//   Meteor.startup(function () {
//     // code to run on server at startup
//   });
// }
// var instagram = new Instagram.createClient('<client_id>', '<client_secret>');
// // fetch media by id
// instagram.media.id('<id>', function (images, error) { ... });
//
// // fetch popular media
// instagram.media.popular(function (images, error) { ... });
//
// // search media
// instagram.media.popular({lat: <some latitude>,
//                      lng: <some longitude>},
//             function (images, error) { ... });
//
//
// // get info about a tag
// instagram.tags.tag('snow', function (tag, error) { ... });
//
// // get recent media for a tag
// instagram.tags.media('snow', function (tag, error) { ... });
// instagram.tags.media('snow', {max_id: 5}, function (tag, error) { ... });
// instagram.tags.media('snow', {min_id: 5}, function (tag, error) { ... });
// instagram.tags.media('snow', {max_id: 5, min_id: 0}, function (tag, error) { ... });
//
// // search for a tag
// instagram.tags.search('snow', function (tags, error) { ... });
//
//
// // get info about a location
// instagram.tags.tag(1, function (tag, error) { ... });
//
// // get recent media for a location
// instagram.tags.media(1, function (tag, error) { ... });
// instagram.tags.media(1, {max_id: 5}, function (tag, error) { ... });
// instagram.tags.media(1, {min_id: 5}, function (tag, error) { ... });
// instagram.tags.media(1, {max_id: 5, min_id: 0}, function (tag, error) { ... });
//
// // search for a location
// instagram.tags.search({lat: ..., lng: ..., distance: ...}, function (tags, error) { ... });
//
//
// // get info about a specific user
// instagram.users.id(1234, function (user, error) { ... });
//
// // get recent media for a user
// instagram.users.media(1234, {count: 12}, function (images, error, pagination) { ... });
//
// // getting own media, according to given *access_token* which is a required parameter
// instagram.users.self({access_token: "1337", count: 12}, function (images, error, pagination) { ... });
//
// // search for usernames
// instagram.users.search("Jack", function (users, error) { ... });
// instagram.users.search({q: "John", count: 1}, function (users, error) { ... });

// var instagram = new Instagram.createClient('<client_id>', '<client_secret>');

Template.home.helpers({
  get_instragram_photos: function(){
    return "asd";
  }
})
