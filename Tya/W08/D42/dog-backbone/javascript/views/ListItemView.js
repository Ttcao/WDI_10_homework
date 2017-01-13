var ListItemView = Backbone.View.extend({

  tagName: 'section',

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  render: function() {
    var html = Handlebars.templates.dog(this.model.toJSON());
    this.$el.html(html);
  }

})
