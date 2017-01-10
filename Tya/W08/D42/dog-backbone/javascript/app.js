var dogs = [
  new Dog({
    id: 1,
    name: 'Doge',
    breed: 'Shiba Inu'
  }),
  new Dog({
    id: 2,
    name: 'Sue',
    breed: 'Bulldog'
  }),
  new Dog({
    id: 3,
    name: 'Ruby',
    breed: 'Beagle'
  })
];

_.each(dogs, function(dog) {
  var view = new ListItemView({ model: dog });
  view.render();
  $('#list').append(view.el);
});
