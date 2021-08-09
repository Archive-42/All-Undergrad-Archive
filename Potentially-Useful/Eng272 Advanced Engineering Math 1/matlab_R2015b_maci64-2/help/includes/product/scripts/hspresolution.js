//===============================================================================
////==================HSP link templates=========================================
window.JST = window.JST || {};
JST["installedHspTmpl"] = _.template(
  "<% for (var i = 0; i < installedhsps.length; i++) { %>" +
    "<% var hsp = installedhsps[i]; %>" +
    '<li><a href="<%= hsp.helplocation %>"><%= hsp.displayname %></a></li>' +
    "<% } %>"
);

//===============================================================================
