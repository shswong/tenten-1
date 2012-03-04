app.models.User = Backbone.Model.extend({
  
  authenticated: function() {
    return !!this.id;
  }
});