(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['giphy'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper;

  return "<iframe src=\""
    + container.escapeExpression(((helper = (helper = helpers.embed || (depth0 != null ? depth0.embed : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : {},{"name":"embed","hash":{},"data":data}) : helper)))
    + "\"></iframe>\n";
},"useData":true});
})();