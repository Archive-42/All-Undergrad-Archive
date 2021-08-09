//===============================================================================
////==================Search page templates======================================

window.JST = window.JST || {};

(function ($) {
  $.setParameter = function (uri, key, value) {
    var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
    //if the query parameter is already set, simply replace the new value in query parameter.
    if (uri.match(re)) {
      return uri.replace(re, "$1" + key + "=" + value + "$2");
    } else {
      var separator = uri.indexOf("?") !== -1 ? "&" : "?";
      return uri + separator + key + "=" + value;
    }
  };

  $(function () {
    $("#current_year").text(new Date().getFullYear());
  });
})(jQuery);

JST["highlighter"] = _.template(
  '<% _.each(highlights, function(value,index) { if (index % 2 !== 0) { %><span style="font-weight:bold"><%= value %></span> <%} else { %><%= value %><% }})%>'
);

JST["searchresults"] = _.template(
  "<% _.each(searchResults, function(searchResult) { %>" +
    '<div class="searchResult <%= getSearchResultClassType(searchResult.type) %>">' +
    '<span class="searchTitle">' +
    '<a href="<%= resolveProductHelpDir(searchResult.product)%>/<%= searchResult.path %><%= appendSearchHighlight() %>"><%=' +
    "searchResult.title %></a>" +
    "</span>" +
    "<% if(searchResult.summary) { %>" +
    '<span class="searchSummary"> - <%= JST["highlighter"]({"highlights":searchResult.summary}) %></span>' +
    "<% } %>" +
    '<div class="searchHighlight">' +
    "<% _.each(searchResult.highlights, function(highlight,highlightIdx) { %>" +
    '<% if (highlightIdx > 0) { %> ... <% } %><%= JST["highlighter"]({"highlights":highlight}) %>' +
    "<% }) %>" +
    "</div>" +
    '<div class="searchBreadcrumb">' +
    "<% _.each(searchResult.breadcrumbs, function(breadcrumbList) { %>" +
    "<% _.each(breadcrumbList, function(breadcrumb, index) { %>" +
    '<a href="<%= resolveProductHelpDir(searchResult.product) %>/<%= breadcrumb.relativepath %>">' +
    "<%= breadcrumb.label %>" +
    "</a>" +
    "<% if(index < breadcrumbList.length - 1) { %>" +
    " &gt; " +
    "<% } %>" +
    "<% })%>" +
    "<% }) %>" +
    "</div>" +
    "</div>" +
    "<% })%>"
);

JST["searchsummary"] = _.template(
  '<div id="resultSummaryTop"><%= summarytext %></div>'
);

JST["footerpages"] = _.template(
  '<div id="search_result_footer">' +
    '<div id="resultSummaryBottom"><%= footer.summarytext %></div>' +
    '<div id="search_result_pages">' +
    "<!--add the previous label-->" +
    "<% if(footer.selectedpage == 1) { %>" +
    '<span class="results-page"><%= getLocalizedString("previous", footer.locale) %></span>' +
    "<% } else { %>" +
    '<a href="<%= getPageUrl(footer.selectedpage - 1) %>" class="results-page">' +
    '<%= getLocalizedString("previous", footer.locale) %>' +
    "</a>" +
    "<% } %>" +
    "<!--if the start range is not 1, add 1 and ...-->" +
    "<% if(footer.startrange != 1) { %>" +
    '<a href="<%= getPageUrl(1) %>" class="results-page">1</a>' +
    '<span class="results-page">...</span>' +
    "<% } %>" +
    "<!--add the range - note that due to the way that _.range works we need to add 1 to endrange-->" +
    "<% _.each(_.range(footer.startrange, footer.endrange+1), function(pageNumber) { %>" +
    "<% if(pageNumber == footer.selectedpage) { %>" +
    '<span class="results-page-selected"><%= pageNumber %></span>' +
    "<% } else {%>" +
    '<a href="<%= getPageUrl(pageNumber) %>" class="results-page"><%= pageNumber %></a>' +
    "<% }%>" +
    "<% }) %>" +
    "<!--if the end range is less than the total number of pages, add ... and the last page number-->" +
    "<% if(footer.endrange < footer.numpages) { %>" +
    '<span class="results-page">...</span>' +
    '<a href="<%= getPageUrl(footer.numpages) %>" class="results-page"><%=' +
    "footer.numpages %></a>" +
    "<% } %>" +
    "<!--Add the next label-->" +
    "<% if(footer.selectedpage == footer.numpages) { %>" +
    '<span class="results-page"> <%= getLocalizedString("next", footer.locale) %></span>' +
    "<% } else { %>" +
    '<a href="<%= getPageUrl(footer.selectedpage + 1) %>" class="results-page">' +
    '<%= getLocalizedString("next", footer.locale) %>' +
    "</a>" +
    "<% } %>" +
    "</div>" +
    "</div>"
);

JST["refinablefacet"] = _.template(
  "<ul>" +
    "<% _.each(refinablefacets, function(result, i) { %>" +
    '<li class="refinable <%= result.facetid %>_<%= facetType %>">' +
    '<a id="refine-<%= facetType %>-<%= result.facetid %>" href="searchresults.html?<%= result.faceturlquery %>">' +
    '<span class="refine_<%= facetType %>_count"><%= result.facetcount %></span>' +
    "<%= result.facetname %>" +
    "</a>" +
    "</li>" +
    "<% }) %>" +
    "</ul>"
);

JST["facets"] = _.template(
  "<% _.each(facets, function (facetObject) { %>" +
    "<% _.each(facetObject, function (value, key) { %>" +
    '<div class="search_refine <%= key %>">' +
    "<h3><%= value.facettitle %></h3>" +
    '<div class="search_refine_scroll">' +
    "<% if(value.refinedfacet) { %>" +
    "<%= refinedFacetTemplate({refinedfacet: value.refinedfacet, facetType: key, refinedFacetTemplate:" +
    "refinedFacetTemplate, refinableFacetTemplate: refinableFacetTemplate}) %>" +
    "<% } else { %>" +
    "<% if(value.refinablefacets) { %>" +
    "<%= refinableFacetTemplate({refinablefacets: value.refinablefacets, facetType: key}) %>" +
    "<% } %>" +
    "<% } %>" +
    "</div>" +
    "</div>" +
    "<% }) %>" +
    "<% }) %>"
);

JST["refinedfacet"] = _.template(
  "<ul>" +
    '<li class="refined <%= refinedfacet.facetid %>_<%= facetType %>">' +
    '<a href="searchresults.html?<%= refinedfacet.faceturlquery %>"><%= refinedfacet.facetname %></a>' +
    "<% if(refinedfacet.refinedfacet) { %>" +
    "<%= refinedFacetTemplate({refinedfacet: refinedfacet.refinedfacet, facetType: facetType," +
    "refinedFacetTemplate: refinedFacetTemplate, refinableFacetTemplate: refinableFacetTemplate}) %>" +
    "<% } else {%>" +
    "<% if(refinedfacet.refinablefacets) { %>" +
    "<%= refinableFacetTemplate({refinablefacets: refinedfacet.refinablefacets, facetType: facetType}) %>" +
    "<% } %>" +
    "<% } %>" +
    "</li>" +
    "</ul>"
);

JST["suggestionlist"] = _.template(
  "<div>" +
    "<div><p><%= message %></p></div>" +
    "<div><p><%= suggestionsheader %></p></div>" +
    "<ul>" +
    "<% _.each(suggestions, function(suggestion){ %>" +
    "<li><%= suggestion %></li>" +
    "<% }) %>" +
    "</ul>" +
    "</div>"
);

//===============================================================================

function getSearchResultsHtml(searchResults, searchTerm) {
  var jsonData = { searchResults: searchResults };
  _.extend(jsonData, {
    getHighlights: function (highlights, separator) {
      return highlights.join(separator);
    },
    getSearchResultClassType: function (type) {
      return "result_type_" + type;
    },
    resolveProductHelpDir: function (productHelpDir) {
      if (productHelpDir.match(/^file:.*/)) {
        return productHelpDir;
      } else {
        return "../" + productHelpDir;
      }
    },
    appendSearchHighlight: function () {
      if (searchTerm && searchTerm.length > 0) {
        return "?searchHighlight=" + encodeURIComponent(searchTerm);
      } else {
        return "";
      }
    },
  });
  return JST["searchresults"](jsonData);
}

function getSearchSummaryHtml(searchSummary) {
  return JST["searchsummary"](searchSummary);
}

function getSearchFooterHtml(searchSummary) {
  var jsonData = { footer: searchSummary };
  _.extend(jsonData, {
    getPageUrl: function (pageNumber) {
      return $.setParameter(window.location.href, "page", pageNumber);
    },
    getLocalizedString: function (str, locale) {
      return getLocalizedString(str, locale);
    },
  });

  return JST["footerpages"](jsonData);
}

function getFacetResultsHtml(facetResults) {
  return JST["facets"]({
    facets: facetResults,
    refinedFacetTemplate: JST["refinedfacet"],
    refinableFacetTemplate: JST["refinablefacet"],
  });
}

//===============================================================================

function getErrorHtml(error) {
  var html = "";
  html += "<div>";
  html += "<p>";
  html += '<font color="red">';
  html = html + error;
  html += "</font>";
  html += "</p>";
  html += "</div>";

  return html;
} // end function getErrorHtml

function getSuggestionsListHtml(noResultJson) {
  return JST["suggestionlist"](noResultJson);
}
//===============================================================================

function populateStrings(userLang) {
  $("#search_results").text(getLocalizedString("search_results", userLang));
  $("#acknowledgments").text(getLocalizedString("acknowledgments", userLang));
  $("#trademarks").text(getLocalizedString("trademarks", userLang));
  $("#patents").text(getLocalizedString("patents", userLang));
  $("#terms_of_use").text(getLocalizedString("terms_of_use", userLang));
}
