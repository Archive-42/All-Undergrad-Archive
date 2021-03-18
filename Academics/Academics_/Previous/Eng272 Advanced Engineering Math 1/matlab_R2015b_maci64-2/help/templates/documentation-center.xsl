<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "&#160;">
  <!ENTITY copy "&#169;">
]>
<xsl:transform version="2.0"
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:file="java.io.File"
               exclude-result-prefixes="file">

  <!-- Copyright 2012-2015 MathWorks, Inc. -->
  
  <!-- To test this stylesheet start matlab from your sandbox, then issue the following:
       cd(fullfile(matlabroot,'makefiles'));
       gen_searchindex('WEB')-->

  <!-- Locale parameter - empty for English -->
  <xsl:param name="locale"/>
  <!-- Destination parameter - "web_dc1", "web", or "install" -->
  <xsl:param name="destination"/>
  <!-- Phase of the current release (g835949) -->
  <xsl:param name="phaseoftherelease"/>
  <!-- File containing American English strings -->
  <xsl:variable name="en_US_StringFile" select="'strings_en_US.xml'"/>
  <!-- File containing translated strings for the current non-English locale -->
  <xsl:variable name="localized_StringFile" select="concat('strings_', $locale, '.xml')"/>
  <!-- Release version (g835949) -->
  <xsl:param name="releaseversion"/>
  <!-- Copyright year (g914730) -->
  <xsl:variable name="copyrightYear" select="substring($releaseversion,2,4)"/>
  <xsl:variable name="releaseversionlc" select="translate($releaseversion,'R','r')"/>
  <!-- Output location -->
  <xsl:param name="docRoot"/>
  <!-- Generate index-not-found page - 'yes' or empty (g865491) -->
  <xsl:param name="generate_index_not_found_page"/>

  <xsl:output method="html" indent="yes" encoding="UTF-8" />

  <xsl:template match="/documentation-set">
    <!-- Exclude 'install' because it is already linked to in the navigation head -->
    <!-- Exclude 'sb2sl' per g812954 -->
    <xsl:variable name="nodes" select="product-list/product[not((child::short-name='install') or (child::short-name='sb2sl'))]"/>
    <xsl:variable name="addons" select="addon-list/addon"/>
    <xsl:variable name="rounded_mid" select="round(count($nodes) div 2)"/>
    <xsl:choose>
      <xsl:when test="$destination = 'web_dc1'">
        <xsl:call-template name="web_page">
          <xsl:with-param name="nodes" select="$nodes"/>
          <xsl:with-param name="rounded_mid" select="$rounded_mid"/>
          <xsl:with-param name="addons" select="$addons"/>
          <xsl:with-param name="generate_index_not_found_page" select="$generate_index_not_found_page"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="$destination = 'web'">
        <xsl:call-template name="web_page_nextgen">
          <xsl:with-param name="nodes" select="$nodes"/>
          <xsl:with-param name="rounded_mid" select="$rounded_mid"/>
          <xsl:with-param name="addons" select="$addons"/>
          <xsl:with-param name="generate_index_not_found_page" select="$generate_index_not_found_page"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="install_page_nextgen">
          <xsl:with-param name="nodes" select="$nodes"/>
          <xsl:with-param name="rounded_mid" select="$rounded_mid"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="install_page_nextgen">
    <xsl:param name="nodes"/>
    <xsl:param name="rounded_mid"/>
    <xsl:text disable-output-escaping="yes">&#x3C;!DOCTYPE HTML&#x3E;&#x0A;</xsl:text>
    <html>
      <head>
        <title><xsl:text>MATLAB </xsl:text>
          <xsl:call-template name="getString">
            <xsl:with-param name="key" select="'documentation_center'"/>
          </xsl:call-template>
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        
        <link href="includes/product/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="includes/product/css/site6.css" rel="stylesheet" type="text/css"/>
        <link href="includes/product/css/site6_lg.css" rel="stylesheet" media="screen and (min-width: 1200px)"/>
        <link href="includes/product/css/site6_md.css" rel="stylesheet" media="screen and (min-width: 992px) and (max-width: 1199px)"/>
        <link href="includes/product/css/site6_sm+xs.css" rel="stylesheet" media="screen and (max-width: 991px)"/>
        <link href="includes/product/css/site6_sm.css" rel="stylesheet" media="screen and (min-width: 768px) and (max-width: 991px)"/>
        <link href="includes/product/css/site6_xs.css" rel="stylesheet" media="screen and (max-width: 767px)"/>
        <xsl:comment>[if IE 8]&gt;
        &lt;link href="includes/product/css/site6_ie8.css" rel="stylesheet" type="text/css"&gt;
        &lt;script src="includes/product/scripts/bootstrap/html5shiv-printshiv.js"&gt;&lt;/script&gt;
        &lt;script src="includes/product/scripts/bootstrap/respond.min.js"&gt;&lt;/script&gt;
        &lt;script src="includes/product/scripts/bootstrap/placeholders.min.js"&gt;&lt;/script&gt;
        &lt;![endif]</xsl:comment>
        <xsl:comment>[if IE 9]&gt;
        &lt;link href="includes/product/css/site6_ie9.css" rel="stylesheet" type="text/css"&gt;
        &lt;script src="includes/product/scripts/bootstrap/placeholders.min.js"&gt;&lt;/script&gt;
        &lt;![endif]</xsl:comment>
        <link href="includes/product/css/site6_offcanvas.css" rel="stylesheet" type="text/css"/>
        <xsl:comment>[if IE 8]&gt;
        &lt;link href="includes/product/css/site6_offcanvas_ie8.css" rel="stylesheet" type="text/css"&gt;
        &lt;script src="includes/product/scripts/bootstrap/respond.min.js"&gt;&lt;/script&gt;
        &lt;![endif]</xsl:comment><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/jquery/jquery-latest.js"></script><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/jquery/jquery.mobile.custom.min.js"></script><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/bootstrap.min.js"></script><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/underscore-min.js"></script><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/hspresolution.js"></script><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/suggest.js"></script><xsl:text>&#x0A;</xsl:text>
        <script src="includes/product/scripts/global.js"></script><xsl:text>&#x0A;</xsl:text><script type="text/javascript">
          <![CDATA[
function setVisibility() {
    document.location = "productfilter:handleSelectedProducts|handleSelectedAddOns|handleCustomToolboxes";
}

function handleSelectedProducts(prodList) {
    jQuery.each(prodList, function(index,value) {
        var elt = $('#'+value+'-link');
        elt.show();
    }); 
}

function handleSelectedAddOns(addOnList) {
    if (addOnList.length > 0) {
        $('#sp-links').removeClass("support_package_list")
        var compiledTmpl = JST['installedHspTmpl']({installedhsps: addOnList});
        $('#addon_list').append(compiledTmpl);
    }
}

function handleCustomToolboxes(toolboxList) {
    if (toolboxList.length > 0) {
        $('#3p-links').removeClass("support_package_list")
        var compiledTmpl = JST['installedHspTmpl']({installedhsps: toolboxList});
        $('#3p_list').append(compiledTmpl);
    }
}

$(setVisibility);
]]>
        </script>
        <link href="includes/product/css/doc_center.css" rel="stylesheet" type="text/css"/>
        <xsl:comment>[if IE 8]>
        &lt;link href="includes/product/css/doc_center_ie8.css" rel="stylesheet" type="text/css"&gt;
        &lt;![endif]</xsl:comment>
        <xsl:comment>[if IE 9]>
        &lt;link href="includes/product/css/doc_center_ie9.css" rel="stylesheet" type="text/css"&gt;
        &lt;![endif]</xsl:comment>
        <link href="includes/product/css/doc_center_installed.css" rel="stylesheet" type="text/css"/>
        <xsl:if test="string-length($locale) &gt; 0">
          <link rel="stylesheet" type="text/css">
            <xsl:attribute name="href">
              <xsl:text>includes/product/css/doc_center_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.css</xsl:text>
            </xsl:attribute>
          </link>
        </xsl:if>
        <link href="includes/product/css/doc_center_print.css" rel="stylesheet" type="text/css" media="print"/><xsl:text>&#x0A;</xsl:text>
        <meta name="generator" content="DocBook XSL Stylesheets V1.52.2"/>
        <meta http-equiv="Content-Script-Type" content="text/javascript"/>
        <meta name="toctype" content="cat"/>
        <!-- DOC SPECIFIC JS: START -->
        <!-- DOC SPECIFIC JS: END -->
      </head>
      
      <body id="responsive_offcanvas">
        <!-- Conjoined Header: Start -->
        <div class="sticky_header_container "> 
          
          <!-- Section Header: Start -->
          <div class="section_header level_3">
            <div class="container-fluid">
              <div class="row" id="mobile_search_row">
                <div class="col-xs-12 col-sm-6 col-sm-push-6 col-md-5 col-md-push-7" id="mobile_search">
                  <div class="search_nested_content_container"> 
                    
                    <!-- DOC SEARCH: START -->
                    <form id="docsearch_form" name="docsearch_form" method="get" data-release="R2015b" data-language="en" action="templates/searchresults.html">
                      <div class="input-group tokenized_search_field">
                        <label class="sr-only">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'search_documentation'"></xsl:with-param>
                          </xsl:call-template>
                        </label>
                        <input type="text" class="form-control conjoined_search" autocomplete="off" name="qdoc" id="docsearch">
                          <xsl:attribute name="placeholder">
                            <xsl:call-template name="getString">
                              <xsl:with-param name="key" select="'search_documentation'"></xsl:with-param>
                            </xsl:call-template>                            
                          </xsl:attribute>
                      </input>
                          <div class="input-group-btn">
                            <button type="submit" name="submitsearch" id="submitsearch" class="btn icon-search btn_search_adjacent btn_search icon_16" tabindex="-1"></button>
                          </div>
                      </div>
                    </form>
                    
                    <!-- DOC SEARCH: END --> 
                    
                  </div>
                  <button class="btn icon-remove btn_search pull-right icon_32 visible-xs" data-toggle="collapse" href="#mobile_search" aria-expanded="false" aria-controls="mobile_search"></button>
                </div>
                <div class="col-xs-9 col-sm-6 col-sm-pull-6 col-md-7 col-md-pull-5">
                  <div class="section_header_content"> 
                    
                    <!-- DOC TITLE: START -->
                    <h1>
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'documentation_center'"/>
                      </xsl:call-template>
                    </h1>
                    <!-- DOC TITLE: END --> 
                    
                  </div>
                </div>
                <div class="col-xs-3 visible-xs"><xsl:text>&#x0A;</xsl:text>
                  <button class="btn icon-search btn_search pull-right icon_16" data-toggle="collapse" href="#mobile_search" aria-expanded="false" aria-controls="mobile_search"></button>
                </div>
              </div>
              
              <!-- Section Header: End --> 
            </div>
          </div>
          <!-- Horo Nav: Start -->
          <div class="horizontal_nav_container">
            <div class="offcanvas_actuator" data-toggle="offcanvas" data-target="#sidebar" id="nav_toggle">
              <button type="button" class="btn"> <span class="sr-only">Toggle navigation</span> <span class="icon-menu icon_32"></span> </button>
              <span class="offcanvas_actuator_label"></span> <span class="offcanvas_actuator_close"></span> </div>
            <div class="offcanvas_horizontal_nav">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-sm-12 hidden-xs">
                    <div class="cta_box">
                      <ul class="list-unstyled list-inline">
                        <li class="cta_item cta_item_general"><a href="/programs/bounce/doc_tryit.html" class="icon-download"><xsl:call-template name="getString"><xsl:with-param name="key" select="'trial_software'"></xsl:with-param></xsl:call-template></a></li>
                        <li class="cta_item cta_item_general"><a href="/support/web_downloads_bounce.html?s_cid=1008_degr_docdn_270055" class="icon-download"><xsl:call-template name="getString"><xsl:with-param name="key" select="'product_updates'"></xsl:with-param></xsl:call-template></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Horo Nav: End --> 
        </div>
        <!-- Conjoined Header: End -->
        
        <div class="row-offcanvas row-offcanvas-left">
          <div class="sidebar-offcanvas" id="sidebar" role="navigation">
            <nav class="offcanvas_nav" role="navigation"> 
              
              <!-- DOC LEFT NAV: START -->
              <ul class="nav_toc">
                <li class="active">
                  <a href="#">
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'all_products'"/>
                    </xsl:call-template>
                  </a>
                </li>
                <li>
                  <a href="install/index.html">
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'installation'"/>
                    </xsl:call-template>
                  </a>
                </li>
                <xsl:if test="not(contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease'))">
                  <li>
                    <a href="http://www.mathworks.com/help/relnotes/index.html">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'release_notes'"/>
                      </xsl:call-template>
                    </a>
                  </li>
                  <li>
                    <a href="http://www.mathworks.com/help/doc-archives.html">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'other_releases'"/>
                      </xsl:call-template>
                    </a>
                  </li>
                </xsl:if>
                <li class="product-link" id="3p-link"><a href="matlab:doc -classic"><xsl:call-template name="getString"><xsl:with-param name="key" select="'supplemental_software'"></xsl:with-param></xsl:call-template></a></li>
              </ul>
              <!-- DOC LEFT NAV: END --> 
            </nav> 
            <script src="includes/product/scripts/offcanvas.js"></script>
          </div>
          <div class="content_container" id="content_container">
            <div class="container-fluid">
              <div class="row">
                <div class="col-xs-12">
                  <xsl:if test="string-length($locale) &gt; 0">
                    <div class="landing_pg_intro">
                      <!-- This string should only be added for restricted doc -->
                      <xsl:if test="$locale='ko_KR' or $locale='zh_CN'">
                        <p>
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'accessing_restricted_doc'"/>
                          </xsl:call-template>
                        </p>
                      </xsl:if>
                      <p>
                        <xsl:call-template name="getString">
                          <xsl:with-param name="key" select="'when_transl_doc_is_avail_you_will_see_it'"/>
                        </xsl:call-template>
                      </p>
                      <p>
                        <xsl:call-template name="getString">
                          <xsl:with-param name="key" select="'you_can_download_doc'"/>
                        </xsl:call-template>
                      </p>
                    </div>
                  </xsl:if>
                  <section id="doc_center_content">
                    <xsl:if test="contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease')">
                      <div class="alert alert-info"> <span class="alert_icon icon-alert-info-reverse icon_32"></span>
                        <h3>Confidential Prerelease Documentation &#8212; Subject to Nondisclosure Agreement</h3>
                      </div>
                    </xsl:if>
                    <span class="not_coming_from_product">
                      <h1>
                        <xsl:attribute name="class">
                          <xsl:value-of select="$releaseversionlc"></xsl:value-of></xsl:attribute>
                        <xsl:call-template name="getString">
                          <xsl:with-param name="key" select="'all_products'"/>
                        </xsl:call-template>
                      </h1>
                    </span>
                    <div class="doc_families_container">
                      <div class="well">
                        <div class="row">
                          <div class="col-xs-12 col-sm-6">
                            <ul class="list-unstyled">
                              <xsl:for-each select="$nodes[position() &lt;= $rounded_mid]">
                                <li class="product-link">
                                  <xsl:attribute name="id">
                                    <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                                  </xsl:attribute>
                                  <a>
                                    <xsl:attribute name="href">
                                      <xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                                    </xsl:attribute>
                                    <xsl:if test="string(display-name) = 'MATLAB Production Server'">
                                      <xsl:attribute name="class">not_coming_from_product</xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="display-name"/>
                                    <xsl:if test="string-length($locale) &gt; 0">
                                      <xsl:variable name="localized_indexfile">
                                        <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                                      </xsl:variable>
                                      <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                                        <xsl:text> </xsl:text>
                                        <xsl:call-template name="getString">
                                          <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                                        </xsl:call-template>
                                      </xsl:if>
                                    </xsl:if>
                                  </a>
                                </li>
                              </xsl:for-each>
                            </ul>
                          </div>
                          <div class="col-xs-12 col-sm-6">
                            <ul class="list-unstyled">
                              <xsl:for-each select="$nodes[position() &gt; $rounded_mid]">
                                <li class="product-link">
                                  <xsl:attribute name="id">
                                    <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                                  </xsl:attribute>
                                  <a>
                                    <xsl:attribute name="href">
                                      <xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                                    </xsl:attribute>
                                    <xsl:if test="string(display-name) = 'MATLAB Production Server'">
                                      <xsl:attribute name="class">not_coming_from_product</xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="display-name"/>
                                    <xsl:if test="string-length($locale) &gt; 0">
                                      <xsl:variable name="localized_indexfile">
                                        <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                                      </xsl:variable>
                                      <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                                        <xsl:text> </xsl:text>
                                        <xsl:call-template name="getString">
                                          <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                                        </xsl:call-template>
                                      </xsl:if>
                                    </xsl:if>
                                  </a>
                                </li>
                              </xsl:for-each>
                            </ul>
                            <ul id="sp-links" class="list-unstyled support_package_list">
                              <div id="addon_list">
                                <li>
                                  <h4>Installed Support Packages</h4>
                                </li>
                              </div>
                            </ul>
                            <ul class="list-unstyled">
                              <div id="web_link">
                                <li>
                                  <xsl:call-template name="getString">
                                    <xsl:with-param name="key" select="'hardware_catalog'"/>
                                  </xsl:call-template>
                                </li>
                              </div>
                            </ul>
                            <ul id="3p-links" class="list-unstyled support_package_list">
                              <div id="3p_list">
                                <li>
                                  <h4>Supplemental Software</h4>
                                </li>
                              </div>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>
                </div>
              </div>
            </div>
          </div>
          
          <!-- MOBILE CTA - Begin -->
          <div class="cta_container_mobile visible-xs">
            <div class="container-fluid">
              <div class="row">
                <div class="col-xs-12">
                  <div class="cta_box">
                    <ul class="list-unstyled list-inline">
                      <li class="cta_item cta_item_general"><a href="/programs/bounce/doc_tryit.html" class="icon-download"><xsl:call-template name="getString"><xsl:with-param name="key" select="'trial_software'"></xsl:with-param></xsl:call-template></a></li>
                      <li class="cta_item cta_item_general"><a href="/support/web_downloads_bounce.html?s_cid=1008_degr_docdn_270055" class="icon-download"><xsl:call-template name="getString"><xsl:with-param name="key" select="'product_updates'"></xsl:with-param></xsl:call-template></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- MOBILE CTA - End -->
          
          <footer id="footer" class="bs-footer">
            <div class="container-fluid">
              <div class="footer">
                <div class="row">
                  <div class="col-xs-12"> 
                    
                    <!-- DOC CONTENT: START -->
                    
                    <p class="copyright">&copy; 1994-2015 The MathWorks, Inc.</p>
                    <ul class="footernav">
                      <li class="footernav_trademarks">
                        <a href="MATLAB:web([docroot '/acknowledgments.html'])">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'acknowledgments'"/>
                          </xsl:call-template>
                        </a>
                      </li>
                      <li class="footernav_trademarks">
                        <a href="MATLAB:web([matlabroot '/trademarks.txt'])">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'trademarks'"/>
                          </xsl:call-template>
                        </a>
                      </li>
                      <li class="footernav_patents">
                        <a href="MATLAB:web([matlabroot '/patents.txt'])">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'patents'"/>
                          </xsl:call-template>
                        </a>
                      </li>
                      <li class="footernav_help">
                        <a href="MATLAB:web(matlab.internal.licenseAgreement)">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'terms_of_use'"/>
                          </xsl:call-template>
                        </a>
                      </li>
                    </ul>
                    
                    <!-- DOC CONTENT: END --> 
                    
                  </div>
                </div>
              </div>
            </div>
          </footer>
        </div>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template name="install_page">
    <xsl:param name="nodes"/>
    <xsl:param name="rounded_mid"/>
    <xsl:text disable-output-escaping="yes">&#x3C;!DOCTYPE HTML&#x3E;&#x0A;</xsl:text>
    <html itemscope="" itemtype="http://www.mathworks.com/help/schema/MathWorksDocPage">
      <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title>
          <xsl:call-template name="getString">
            <xsl:with-param name="key" select="'home'"/>
          </xsl:call-template>
        </title>
        <link rel="stylesheet" href="docstyle.css" type="text/css"/>
        <meta http-equiv="Content-Script-Type" content="text/javascript"/><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/shared/scripts/l10n.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/product/scripts/jquery/jquery-latest.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/product/scripts/underscore-min.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/product/scripts/jquery/jquery.toggleval.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/product/scripts/localnav.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/product/scripts/suggest.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript" src="includes/product/scripts/hspresolution.js"></script><xsl:text>&#x0A;</xsl:text>
        <script type="text/javascript">
<![CDATA[
    var suggestionsObj;
    $(function() {
        var searchField = $('#docsearch');
        suggestionsObj = new Suggestions(getSuggestions, getMore, searchField);
    });

    function getSuggestions() {
       var text = suggestionsObj.searchField.val();
       document.location='docsuggestion:' + text;
    }

    function getMore(type) {
        var text = suggestionsObj.searchField.val();
        document.location='docsuggestion:' + type + ':' + text;
    }
$(function() {
    $('h3.expand').click(function() {
        var h3elt = $(this);
        h3elt.siblings('.collapse').slideToggle();
        h3elt.toggleClass('open');
    });
});

function setVisibility() {
    document.location = "productfilter:handleSelectedProducts|handleSelectedAddOns|handleCustomToolboxes";
}

function handleSelectedProducts(prodList) {
    jQuery.each(prodList, function(index,value) {
        var elt = $('#'+value+'-link');
        elt.show();
    }); 
}

function handleSelectedAddOns(addOnList) {
    if (addOnList.length > 0) {
        $('#sp-links').removeClass("support_package_list")
        var compiledTmpl = JST['installedHspTmpl']({installedhsps: addOnList});
        $('#addon_list').append(compiledTmpl);
    }
}

function handleCustomToolboxes(toolboxList) {
    if (toolboxList.length > 0) {
        $('#3p-links').removeClass("support_package_list")
        var compiledTmpl = JST['installedHspTmpl']({installedhsps: toolboxList});
        $('#3p_list').append(compiledTmpl);
    }
}

$(setVisibility);
]]>
        </script>
        <link href="includes/product/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="includes/product/css/960.css" rel="stylesheet" type="text/css"/>
        <link href="includes/product/css/site5.css" rel="stylesheet" type="text/css"/>
        <link href="includes/product/css/doc_center.css" rel="stylesheet" type="text/css"/>
        <link href="includes/product/css/doc_center_installed.css" rel="stylesheet" type="text/css"/>
        <xsl:if test="string-length($locale) &gt; 0">
          <link rel="stylesheet" type="text/css">
            <xsl:attribute name="href">
              <xsl:text>includes/product/css/doc_center_installed_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.css</xsl:text>
            </xsl:attribute>
          </link>
        </xsl:if>
        <link href="includes/product/css/doc_center_print.css" rel="stylesheet" type="text/css" media="print"/>
      </head>
      <body>
        <div class="container_192">
          <div class="grid_192">
            <div class="page_container">
              <div class="content_frame">
                <div class="content_container" id="content_container">
                  <xsl:if test="contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease')">
                    <div class="doc_nda_notice">
                      <p>Confidential Prerelease Documentation &#8212; Subject to Nondisclosure Agreement</p>
                    </div>
                  </xsl:if>
                  <div class="docsearch_container">
                    <form id="docsearch_form" name="docsearch_form" method="get" action="templates/searchresults.html"><xsl:text>&#x0A;</xsl:text>
                      <label for="docsearch" class="hidden">Search MATLAB Documentation</label><xsl:text>&#x0A;</xsl:text>
                      <!-- g832365 -->
                      <input type="text" name="qdoc" id="docsearch" class="textfield" autocomplete="off">
                        <xsl:attribute name="value">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'search_documentation'"/>
                          </xsl:call-template>
                        </xsl:attribute>
                      </input><xsl:text>&#x0A;</xsl:text>
                      <input type="submit" name="submitsearch" id="submitsearch" value="Search" class="docsearch_submit"/><xsl:text>&#x0A;</xsl:text>
                      <script type="text/javascript">
<![CDATA[
         $("input[name='qdoc']").toggleVal({
            focusClass: "hasFocus"
         });
]]>
                      </script><xsl:text>&#x0A;</xsl:text>
                    </form>
                  </div>
                  <xsl:if test="string-length($locale) &gt; 0">
                    <div class="landing_pg_intro">
                      <!-- This string should only be added for restricted doc -->
                      <xsl:if test="$locale='ko_KR' or $locale='zh_CN'">
                        <p>
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'accessing_restricted_doc'"/>
                          </xsl:call-template>
                        </p>
                      </xsl:if>
                      <p>
                        <xsl:call-template name="getString">
                          <xsl:with-param name="key" select="'when_transl_doc_is_avail_you_will_see_it'"/>
                        </xsl:call-template>
                      </p>
                      <p>
                        <xsl:call-template name="getString">
                          <xsl:with-param name="key" select="'you_can_download_doc'"/>
                        </xsl:call-template>
                      </p>
                    </div>
                  </xsl:if>
                  <section id="doc_center_content">
                    <div class="doc_category_nav_head">
                      <ul>
                        <li>
                          <a href="install/index.html">
                            <xsl:call-template name="getString">
                              <xsl:with-param name="key" select="'installation'"/>
                            </xsl:call-template>
                          </a>
                        </li>
                        <xsl:if test="not(contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease'))">
                          <li>
                            <a href="http://www.mathworks.com/help/relnotes/index.html">
                              <xsl:call-template name="getString">
                                <xsl:with-param name="key" select="'release_notes'"/>
                              </xsl:call-template>
                            </a>
                          </li>
                        </xsl:if>
                      </ul>
                    </div>
                    <div class="doc_families_container">
                      <div class="grid_192">
                        <div class="grid_95">
                          <ul class="unbulleted_list">
                            <xsl:for-each select="$nodes[position() &lt;= $rounded_mid]">
                              <li class="product-link">
                                <xsl:attribute name="id">
                                  <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                                </xsl:attribute>
                                <a>
                                  <xsl:attribute name="href">
                                    <xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                                  </xsl:attribute>
                                  <xsl:value-of select="display-name"/>
                                  <xsl:if test="string-length($locale) &gt; 0">
                                    <xsl:variable name="localized_indexfile">
                                      <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                                    </xsl:variable>
                                    <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                                      <xsl:text> </xsl:text>
                                      <xsl:call-template name="getString">
                                        <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                                      </xsl:call-template>
                                    </xsl:if>
                                  </xsl:if>
                                </a>
                              </li>
                            </xsl:for-each>
                          </ul>
                        </div>
                        <div class="grid_95 push_2">
                          <ul class="unbulleted_list">
                            <xsl:for-each select="$nodes[position() &gt; $rounded_mid]">
                              <li class="product-link">
                                <xsl:attribute name="id">
                                  <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                                </xsl:attribute>
                                <a>
                                  <xsl:attribute name="href">
                                    <xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                                  </xsl:attribute>
                                  <xsl:value-of select="display-name"/>
                                  <xsl:if test="string-length($locale) &gt; 0">
                                    <xsl:variable name="localized_indexfile">
                                      <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                                    </xsl:variable>
                                    <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                                      <xsl:text> </xsl:text>
                                      <xsl:call-template name="getString">
                                        <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                                      </xsl:call-template>
                                    </xsl:if>
                                  </xsl:if>
                                </a>
                              </li>
                            </xsl:for-each>
                          </ul>
                          <ul id="sp-links" class="unbulleted_list support_package_list">
                            <div id="addon_list">
                              <li>
                                <h4>
                                  <xsl:call-template name="getString">
                                    <xsl:with-param name="key" select="'installed_support_packages'"/>
                                  </xsl:call-template>
                                </h4>
                              </li>
                            </div>
                          </ul>
                          <ul class="unbulleted_list">
                            <div id="web_link">
                              <li>
                                <xsl:call-template name="getString">
                                  <xsl:with-param name="key" select="'hardware_catalog'"/>
                                </xsl:call-template>
                              </li>
                            </div>
                          </ul>
                          <ul id="3p-links" class="unbulleted_list support_package_list">
                            <div id="3p_list">
                              <li>
                                <h4>
                                  <xsl:call-template name="getString">
                                    <xsl:with-param name="key" select="'supplemental_software'"/>
                                  </xsl:call-template>
                                </h4>
                              </li>
                            </div>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </section>
                  <div class="doc_category_nav_foot">
                    <ul>
                      <li class="product-link" id="3p-link">
                        <a href="matlab:doc -classic">
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'supplemental_software'"/>
                          </xsl:call-template>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="grid_192">
            <div class="footer_container">
              <div class="footer">
                <ul class="footernav">
                  <li class="footernav_trademarks">
                    <a href="MATLAB:web([docroot '/acknowledgments.html'])">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'acknowledgments'"/>
                      </xsl:call-template>
                    </a>
                  </li>
                  <li class="footernav_trademarks">
                    <a href="MATLAB:web([matlabroot '/trademarks.txt'])">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'trademarks'"/>
                      </xsl:call-template>
                    </a>
                  </li>
                  <li class="footernav_patents">
                    <a href="MATLAB:web([matlabroot '/patents.txt'])">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'patents'"/>
                      </xsl:call-template>
                    </a>
                  </li>
                  <li class="footernav_help">
                    <a href="MATLAB:web(matlab.internal.licenseAgreement)">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'terms_of_use'"/>
                      </xsl:call-template>
                    </a>
                  </li>
                </ul>
                <div class="copyright">&copy; 1994-<xsl:value-of select="$copyrightYear"/> The MathWorks, Inc.</div>
              </div>
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="web_page">
    <xsl:param name="nodes"/>
    <xsl:param name="rounded_mid"/>
    <xsl:param name="addons"/>
    <xsl:param name="generate_index_not_found_page"/>
    <xsl:variable name="hrefroot">
      <xsl:choose>
        <xsl:when test="$generate_index_not_found_page='yes'">/help/</xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:variable>
    <xsl:text disable-output-escaping="yes">&#x3C;@html layout="nextgen_lbr" layoutStyle="nextgen"&#x3E;&#x0A;</xsl:text>
      <xsl:text disable-output-escaping="yes">&#x3C;@head&#x3E;&#x0A;</xsl:text>
        <xsl:text disable-output-escaping="yes">&#x3C;@title&#x3E;MATLAB Documentation&#x3C;/@title&#x3E;&#x0A;</xsl:text>
        <link rel="stylesheet" href="docstyle.css" type="text/css"/>
        <meta name="generator" content="DocBook XSL Stylesheets V1.52.2"/>
        <meta http-equiv="Content-Script-Type" content="text/javascript"/>
        <meta name="toctype" content="cat"/>
        <script type="text/javascript" src="/help/includes/shared/scripts/l10n.js"></script>
        <script type="text/javascript" src="/help/basecodes.js"></script>
        <link href="/includes_content/nextgen/css/doc_center/doc_center.css" rel="stylesheet" type="text/css"/>
        <xsl:text disable-output-escaping="yes">&#x3C;#include "doc_header1a_dcntr.html"&#x3E;&#x0A;</xsl:text>

        <script type="text/javascript">
<![CDATA[
    $(function() {
        $('h3.expand').click(function() {
            var h3elt = $(this);
            h3elt.siblings('.collapse').slideToggle();
            h3elt.toggleClass('open');
        });
        $(window).bind('resize', function(e) {
           	$('#search_crumb_container').width($('#content_container').width());
        });
        $('#search_crumb_container').width($('#content_container').width());
    });

    function handleSelectedProducts(prodList) {
        $('.doc_template_frame #3p-link').removeClass('coming_from_product');
        if (prodList == null || prodList.length == 0) {
            $('.doc_families_container .product-link').show();
        } else {
            jQuery.each(prodList, function(index,value) {
               $('#'+value+'-link').show();
            });
        }
    }

    function handleSelectedAddOns(addOnList) {
        if (addOnList != null) {
            $('#sp-links').removeClass("support_package_list")
            jQuery.each(addOnList, function(index,value) {
                $('#'+value+'-link').show();
            });
        }
    }

    $(setVisibility);
]]>
        </script>
        <style type="text/css">
          .doc_template_frame_content { padding-left:30px; padding-right:30px; }
          .doc_template_frame_content .grid_112 { width:100%; }
          .doc_template_frame_content .grid_55 { width:50%; min-width:200px; }
        </style>
      <xsl:text disable-output-escaping="yes">&#x3C;/@head&#x3E;&#x0A;</xsl:text>
      <xsl:text disable-output-escaping="yes">&#x3C;@body&#x3E;&#x0A;</xsl:text>
        <xsl:text disable-output-escaping="yes">
        &#x3C;@designComponents.pageHeaderContent level="level_3"&#x3E;
          &#x3C;h1&#x3E;</xsl:text>
          <xsl:call-template name="getString">
            <xsl:with-param name="key" select="'documentation_center'"/>
          </xsl:call-template>
          <xsl:text disable-output-escaping="yes">&#x3C;/h1&#x3E;
            &#x3C;@designComponents.ctabox&#x3E;
            &#x3C;@designComponents.ctabox_item name="Trials" action="/programs/bounce/doc_tryit.html" /&#x3E;
            &#x3C;@designComponents.ctabox_item name="Product Updates" action="/support/web_downloads_bounce.html?s_cid=1008_degr_docdn_270055" /&#x3E;
            &#x3C;@designComponents.ctabox_item name="Share this page" /&#x3E;
          &#x3C;/@designComponents.ctabox&#x3E;
        &#x3C;/@designComponents.pageHeaderContent&#x3E;
        </xsl:text>
        <xsl:if test="contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease')">
          <div class="doc_nda_notice">
            <p>Confidential Prerelease Documentation &#8212; Subject to Nondisclosure Agreement</p>
          </div>
        </xsl:if>
        <xsl:if test="$generate_index_not_found_page='yes'">
          <p style="border:2px solid red; font-weight: bold; font-size: 11pt; padding: 10px;">
            <xsl:call-template name="getString">
              <xsl:with-param name="key" select="'page_not_avail'"/>
            </xsl:call-template>
            <xsl:call-template name="getString">
              <xsl:with-param name="key" select="'use_search_box_or_browse'"/>
            </xsl:call-template>
            <xsl:call-template name="getString">
              <xsl:with-param name="key" select="'view_archive_doc'"/>
            </xsl:call-template>
          </p>
        </xsl:if>
        <div id="search_crumb_container">
          <div class="docsearch_container">
            <form id="docsearch_form" name="docsearch_form" method="get">
              <xsl:attribute name="action">
                <xsl:text>/help/search.html</xsl:text>
              </xsl:attribute>
              <label for="docsearch" class="hidden">Search MathWorks Documentation Products</label>
              <!-- g832365 -->
              <input type="text" name="qdoc" id="docsearch" class="textfield" autocomplete="off">
                <xsl:attribute name="value">
                  <!-- g902657 -->
                  <xsl:choose>
                    <xsl:when test="string-length($locale) &gt; 0">
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'search_latest_documentation'"/>
                      </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="concat('Search ', $releaseversion, ' Documentation')"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
              </input>
              <input type="submit" name="submitsearch" id="submitsearch" value="Search" class="docsearch_submit"/>
              <script type="text/javascript">
<![CDATA[
                $("input[name='qdoc']").toggleVal({
                    focusClass: "hasFocus"
                });
]]>
                </script>
            </form>
          </div>
        </div>
        <xsl:if test="string-length($locale) &gt; 0">
          <div class="landing_pg_intro">
            <p>
              <xsl:call-template name="getString">
                <xsl:with-param name="key" select="'transl_doc_is_avail_incr'"/>
              </xsl:call-template>
            </p>
            <p>
              <xsl:call-template name="getString">
                <xsl:with-param name="key" select="'you_can_download_doc'"/>
              </xsl:call-template>
            </p>
            <p>
              <xsl:call-template name="getString">
                <xsl:with-param name="key" select="'refer_to_other_releases'"/>
              </xsl:call-template>
            </p>
          </div>
        </xsl:if>
        <h1 class="bottom_ruled">
          <span class="not_coming_from_product">
            <img>
              <xsl:attribute name="src">
                <xsl:text>/images/nextgen/doc_center/bg_h1_</xsl:text>
                <xsl:value-of select="$releaseversionlc"/>
                <xsl:text>.png</xsl:text>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="$releaseversion"/>
              </xsl:attribute>
            </img>
          </span>
        </h1>
        <div class="doc_category_nav_head">
          <ul>
            <li>
              <a href="{concat($hrefroot, 'install/index.html')}">
                <xsl:call-template name="getString">
                  <xsl:with-param name="key" select="'installation'"/>
                </xsl:call-template>
              </a>
            </li>
            <xsl:if test="not(contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease'))">
              <li>
                <a href="{concat($hrefroot, 'relnotes/index.html')}">
                  <xsl:call-template name="getString">
                    <xsl:with-param name="key" select="'release_notes'"/>
                  </xsl:call-template>
                </a>
              </li>
            </xsl:if>
            <!-- g830674 -->
            <li class="doc_category_nav_item_other_releases">
              <a href="{concat($hrefroot, 'doc-archives.html')}">
                <xsl:call-template name="getString">
                  <xsl:with-param name="key" select="'other_releases'"/>
                </xsl:call-template>
              </a>
            </li>
          </ul>
        </div>
        <div class="doc_families_container">
          <div class="grid_112">
            <div class="grid_55">
              <ul class="unbulleted_list">
                <xsl:for-each select="$nodes[position() &lt;= $rounded_mid]">
                  <li class="product-link">
                    <xsl:attribute name="id">
                      <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                    </xsl:attribute>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:value-of select="$hrefroot"/><xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                      </xsl:attribute>
                      <xsl:if test="string(display-name) = 'MATLAB Production Server'">
                        <xsl:attribute name="class">not_coming_from_product</xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="display-name"/>
                      <xsl:if test="string-length($locale) &gt; 0">
                        <xsl:variable name="localized_indexfile">
                          <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                        </xsl:variable>
                        <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                          <xsl:text> </xsl:text>
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                          </xsl:call-template>
                        </xsl:if>
                      </xsl:if>
                    </a>
                  </li>
                </xsl:for-each>
              </ul>
            </div>
            <div class="grid_55 push_2">
              <ul class="unbulleted_list">
                <xsl:for-each select="$nodes[position() &gt; $rounded_mid]">
                  <li class="product-link">
                    <xsl:attribute name="id">
                      <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                    </xsl:attribute>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:value-of select="$hrefroot"/><xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                      </xsl:attribute>
                      <xsl:if test="string(display-name) = 'MATLAB Production Server'">
                        <xsl:attribute name="class">not_coming_from_product</xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="display-name"/>
                      <xsl:if test="string-length($locale) &gt; 0">
                        <xsl:variable name="localized_indexfile">
                          <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                        </xsl:variable>
                        <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                          <xsl:text> </xsl:text>
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                          </xsl:call-template>
                        </xsl:if>
                      </xsl:if>
                    </a>
                  </li>
                </xsl:for-each>
              </ul>
              <xsl:if test="$addons">
                <ul id="sp-links" class="unbulleted_list support_package_list">
                  <li>
                    <h4>
                      <xsl:call-template name="getString">
                        <xsl:with-param name="key" select="'installed_support_packages'"/>
                      </xsl:call-template>
                    </h4>
                  </li>
                  <xsl:for-each select="$addons">
                    <li class="product-link">
                      <xsl:attribute name="id">
                        <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                      </xsl:attribute>
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="$hrefroot"/><xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of select="display-name"/>
                        <xsl:if test="string-length($locale) &gt; 0">
                          <xsl:variable name="localized_indexfile">
                            <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                          </xsl:variable>
                          <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                            <xsl:text> </xsl:text>
                            <xsl:call-template name="getString">
                              <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                            </xsl:call-template>
                          </xsl:if>
                        </xsl:if>
                      </a>
                    </li>
                  </xsl:for-each>
                </ul>
              </xsl:if>
              <ul class="unbulleted_list">
                <div id="web_link">
                  <li>
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'hardware_catalog'"/>
                    </xsl:call-template>
                  </li>
                </div>
              </ul>
            </div>
          </div>
        </div>
        <div class="doc_category_nav_foot">
          <ul>
            <li class="product-link coming_from_product" id="3p-link">
              <a href="matlab:doc -classic">
                <xsl:call-template name="getString">
                  <xsl:with-param name="key" select="'supplemental_software'"/>
                </xsl:call-template>
              </a>
            </li>
          </ul>
        </div>
        <div class="footer_container coming_from_product">
          <div class="footer">
            <ul class="footernav">
              <li class="footernav_trademarks">
                <a href="MATLAB:web([docroot '/acknowledgments.html'])">
                  <xsl:call-template name="getString">
                    <xsl:with-param name="key" select="'acknowledgments'"/>
                  </xsl:call-template>
                </a>
              </li>
              <li class="footernav_trademarks">
                <a href="MATLAB:web([matlabroot '/trademarks.txt'])">
                  <xsl:call-template name="getString">
                    <xsl:with-param name="key" select="'trademarks'"/>
                  </xsl:call-template>
                </a>
              </li>
              <li class="footernav_patents">
                <a href="MATLAB:web([matlabroot '/patents.txt'])">
                  <xsl:call-template name="getString">
                    <xsl:with-param name="key" select="'patents'"/>
                  </xsl:call-template>
                </a>
              </li>
              <li class="footernav_help">
                <a href="MATLAB:web(matlab.internal.licenseAgreement)">
                  <xsl:call-template name="getString">
                    <xsl:with-param name="key" select="'terms_of_use'"/>
                  </xsl:call-template>
                </a>
              </li>
            </ul>
            <div class="copyright">&copy; 1994-<xsl:value-of select="$copyrightYear"/> The MathWorks, Inc.</div>
          </div>
        </div>
      <xsl:text disable-output-escaping="yes">&#x3C;/@body&#x3E;&#x0A;</xsl:text>
    <xsl:text disable-output-escaping="yes">&#x3C;/@html&#x3E;&#x0A;</xsl:text>
  </xsl:template>

  <xsl:template name="web_page_nextgen">
    <xsl:param name="nodes"/>
    <xsl:param name="rounded_mid"/>
    <xsl:param name="addons"/>
    <xsl:param name="generate_index_not_found_page"/>
    <xsl:variable name="hrefroot">
      <xsl:choose>
        <xsl:when test="$generate_index_not_found_page='yes'">/help/</xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:variable>
    <xsl:text disable-output-escaping="yes">&#x3C;@html layout="responsive_offcanvas" layoutStyle="responsive"&#x3E;&#x0A;</xsl:text>
    <xsl:text disable-output-escaping="yes">&#x3C;@layoutComponents.options body_trail="true" fluid="true" contact_widget="false"/&#x3E;&#x0A;</xsl:text>
    <xsl:text disable-output-escaping="yes">&#x3C;@layoutComponents.micro_data "http://www.mathworks.com/help/schema/MathWorksDocPage"/&#x3E;&#x0A;</xsl:text>
    <xsl:text disable-output-escaping="yes">&#x3C;@layoutComponents.release number="</xsl:text><xsl:value-of select="$releaseversion"/><xsl:text disable-output-escaping="yes">"/&#x3E;&#x0A;</xsl:text>
    <xsl:text disable-output-escaping="yes">&#x3C;@layoutComponents.doc_search action="search.html"/&#x3E;&#x0A;</xsl:text>
      <xsl:text disable-output-escaping="yes">&#x3C;@head&#x3E;&#x0A;</xsl:text>
        <xsl:text disable-output-escaping="yes">&#x3C;@title&#x3E;MATLAB Documentation&#x3C;/@title&#x3E;&#x0A;</xsl:text>
        <meta name="generator" content="DocBook XSL Stylesheets V1.52.2"/>
        <meta http-equiv="Content-Script-Type" content="text/javascript"/>
        <meta name="toctype" content="cat"/><xsl:text disable-output-escaping="yes">&#x0A;</xsl:text>
        <script src="/help/includes/shared/scripts/l10n.js"></script><xsl:text disable-output-escaping="yes">&#x0A;</xsl:text>
        <script src="/help/basecodes.js"></script><xsl:text disable-output-escaping="yes">&#x0A;</xsl:text>
        <xsl:text disable-output-escaping="yes">&#x3C;#include "doc_header1a_dcntr.html"&#x3E;&#x0A;</xsl:text>

        <script>
          <![CDATA[
    function handleSelectedProducts(prodList) {
        $('#3p-link').removeClass('coming_from_product');
        if (prodList == null || prodList.length == 0) {
            $('.doc_families_container .product-link').show();
        } else {
            jQuery.each(prodList, function(index,value) {
               $('#'+value+'-link').show();
            });
        }
    }
    
    function handleSelectedAddOns(addOnList) {
        if (addOnList != null) {
            $('#sp-links').removeClass("support_package_list")
            jQuery.each(addOnList, function(index,value) {
                $('#'+value+'-link').show();
            });
        }
    }
    
    $(setVisibility);
]]>
        </script>
      <xsl:text disable-output-escaping="yes">&#x0A;&#x3C;/@head&#x3E;&#x0A;</xsl:text>
      <xsl:text disable-output-escaping="yes">&#x3C;@body&#x3E;&#x0A;</xsl:text>
      <xsl:text disable-output-escaping="yes">&#x3C;@contentComponents.off_canvas&#x3E;&#x0A;</xsl:text>
       <ul class="nav_breadcrumb">
         <li class="support_breadcrumb">
           <a href="/support">
             <xsl:call-template name="getString">
               <xsl:with-param name="key" select="'all_support'"/>
             </xsl:call-template>
           </a>
         </li>
       </ul>
       <ul class="nav_toc">
         <li class="active">
           <a href="#">
             <xsl:call-template name="getString">
               <xsl:with-param name="key" select="'all_products'"/>
             </xsl:call-template>
           </a>
         </li>
         <li>
           <a href="install/index.html">
             <xsl:call-template name="getString">
               <xsl:with-param name="key" select="'installation'"/>
             </xsl:call-template>
           </a>
         </li>
         <xsl:if test="not(contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease'))">
           <li>
             <a href="relnotes/index.html">
               <xsl:call-template name="getString">
                 <xsl:with-param name="key" select="'release_notes'"/>
               </xsl:call-template>
             </a>
           </li>
           <li>
             <a href="doc-archives.html">
               <xsl:call-template name="getString">
                 <xsl:with-param name="key" select="'other_releases'"/>
               </xsl:call-template>
             </a>
           </li>
         </xsl:if>
         <li class="product-link coming_from_product" id="3p-link"><a href="matlab:doc -classic"><xsl:call-template name="getString"><xsl:with-param name="key" select="'supplemental_software'"></xsl:with-param></xsl:call-template></a></li>
       </ul>
      <xsl:text disable-output-escaping="yes">&#x0A;&#x3C;/@contentComponents.off_canvas&#x3E;&#x0A;</xsl:text>
      <xsl:text disable-output-escaping="yes">
      &#x3C;@designComponents.pageHeaderContent link="/help"&#x3E;
        &#x3C;h1&#x3E;</xsl:text>
        <xsl:call-template name="getString">
          <xsl:with-param name="key" select="'documentation_center'"/>
        </xsl:call-template>
        <xsl:text disable-output-escaping="yes">&#x3C;/h1&#x3E;
          &#x3C;@designComponents.pageHeaderSearch&#x3E; &#x3C;#include "/help/includes/web/html/doc_search.html"&#x3E; &#x3C;/@designComponents.pageHeaderSearch&#x3E;
        &#x3C;/@designComponents.pageHeaderContent&#x3E;
        &#x3C;@designComponents.ctabox orientation="horizontal"&#x3E;
          &#x3C;@designComponents.ctabox_item name="Trials" action="/programs/bounce/doc_tryit.html"/&#x3E;
          &#x3C;@designComponents.ctabox_item name="Product Updates" action="/support/web_downloads_bounce.html?s_cid=1008_degr_docdn_270055"/&#x3E;
        &#x3C;/@designComponents.ctabox&#x3E;
        &#x3C;@local_nav&#x3E;&#x3C;/@local_nav&#x3E;
      </xsl:text>
        <xsl:if test="contains($phaseoftherelease, 'beta') or contains($phaseoftherelease, 'prerelease')">
          <div class="alert alert-info"> <span class="alert_icon icon-alert-info-reverse icon_32"></span>
            <h3>Info</h3>
            <p>Confidential Prerelease Documentation &#8212; Subject to Nondisclosure Agreement</p>
          </div>
        </xsl:if>
        <xsl:if test="$generate_index_not_found_page='yes'">
          <p style="border:2px solid red; font-weight: bold; font-size: 11pt; padding: 10px;">
            <xsl:call-template name="getString">
              <xsl:with-param name="key" select="'page_not_avail'"/>
            </xsl:call-template>
            <xsl:call-template name="getString">
              <xsl:with-param name="key" select="'use_search_box_or_browse'"/>
            </xsl:call-template>
            <xsl:call-template name="getString">
              <xsl:with-param name="key" select="'view_archive_doc'"/>
            </xsl:call-template>
          </p>
        </xsl:if>
        <xsl:if test="string-length($locale) &gt; 0">
          <div class="landing_pg_intro">
            <p>
              <xsl:call-template name="getString">
                <xsl:with-param name="key" select="'transl_doc_is_avail_incr'"/>
              </xsl:call-template>
            </p>
            <p>
              <xsl:call-template name="getString">
                <xsl:with-param name="key" select="'you_can_download_doc'"/>
              </xsl:call-template>
            </p>
            <p>
              <xsl:call-template name="getString">
                <xsl:with-param name="key" select="'refer_to_other_releases'"/>
              </xsl:call-template>
            </p>
          </div>
        </xsl:if>
        <section id="doc_center_content">
          <span class="not_coming_from_product">
            <h1>
              <xsl:attribute name="class">
                <xsl:value-of select="$releaseversionlc"></xsl:value-of></xsl:attribute>
                <xsl:call-template name="getString">
                  <xsl:with-param name="key" select="'all_products'"/>
                </xsl:call-template>
            </h1>
          </span>
          <div class="doc_families_container">
            <div class="well">
              <div class="row">
              <div class="col-xs-12 col-sm-6">
                <ul class="list-unstyled">
                  <xsl:for-each select="$nodes[position() &lt;= $rounded_mid]">
                    <li class="product-link">
                      <xsl:attribute name="id">
                        <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                      </xsl:attribute>
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="$hrefroot"/><xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                        </xsl:attribute>
                        <xsl:if test="string(display-name) = 'MATLAB Production Server'">
                          <xsl:attribute name="class">not_coming_from_product</xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="display-name"/>
                        <xsl:if test="string-length($locale) &gt; 0">
                          <xsl:variable name="localized_indexfile">
                            <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                          </xsl:variable>
                          <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                            <xsl:text> </xsl:text>
                            <xsl:call-template name="getString">
                              <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                            </xsl:call-template>
                          </xsl:if>
                        </xsl:if>
                      </a>
                    </li>
                  </xsl:for-each>
                </ul>
              </div>
                <div class="col-xs-12 col-sm-6">
                  <ul class="list-unstyled">
                    <xsl:for-each select="$nodes[position() &gt; $rounded_mid]">
                      <li class="product-link">
                        <xsl:attribute name="id">
                          <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                        </xsl:attribute>
                        <a>
                          <xsl:attribute name="href">
                            <xsl:value-of select="$hrefroot"/><xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                          </xsl:attribute>
                          <xsl:if test="string(display-name) = 'MATLAB Production Server'">
                            <xsl:attribute name="class">not_coming_from_product</xsl:attribute>
                          </xsl:if>
                          <xsl:value-of select="display-name"/>
                          <xsl:if test="string-length($locale) &gt; 0">
                            <xsl:variable name="localized_indexfile">
                              <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                            </xsl:variable>
                            <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                              <xsl:text> </xsl:text>
                              <xsl:call-template name="getString">
                                <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                              </xsl:call-template>
                            </xsl:if>
                          </xsl:if>
                        </a>
                      </li>
                    </xsl:for-each>
                  </ul>
                  <xsl:if test="$addons">
                    <ul id="sp-links" class="list-unstyled support_package_list">
                      <li>
                        <h4>
                          <xsl:call-template name="getString">
                            <xsl:with-param name="key" select="'installed_support_packages'"/>
                          </xsl:call-template>
                        </h4>
                      </li>
                      <xsl:for-each select="$addons">
                        <li class="product-link">
                          <xsl:attribute name="id">
                            <xsl:value-of select="short-name"/><xsl:text>-link</xsl:text>
                          </xsl:attribute>
                          <a>
                            <xsl:attribute name="href">
                              <xsl:value-of select="$hrefroot"/><xsl:value-of select="help-location"/><xsl:text>/index.html</xsl:text>
                            </xsl:attribute>
                            <xsl:value-of select="display-name"/>
                            <xsl:if test="string-length($locale) &gt; 0">
                              <xsl:variable name="localized_indexfile">
                                <xsl:value-of select="$docRoot"/><xsl:text>/</xsl:text><xsl:value-of select="help-location"/><xsl:text>/index_</xsl:text><xsl:value-of select="$locale"/><xsl:text>.html</xsl:text>
                              </xsl:variable>
                              <xsl:if test="file:exists(file:new(string($localized_indexfile)))">
                                <xsl:text> </xsl:text>
                                <xsl:call-template name="getString">
                                  <xsl:with-param name="key" select="'current_locale_in_parenthesis'"/>
                                </xsl:call-template>
                              </xsl:if>
                            </xsl:if>
                          </a>
                        </li>
                      </xsl:for-each>
                    </ul>
                  </xsl:if>
                  <ul class="list-unstyled">
                    <div id="web_link">
                      <li>
                        <xsl:call-template name="getString">
                          <xsl:with-param name="key" select="'hardware_catalog'"/>
                        </xsl:call-template>
                      </li>
                    </div>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="footer_container coming_from_product">
            <div class="footer">
              <ul class="footernav">
                <li class="footernav_trademarks">
                  <a href="MATLAB:web([docroot '/acknowledgments.html'])">
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'acknowledgments'"/>
                    </xsl:call-template>
                  </a>
                </li>
                <li class="footernav_trademarks">
                  <a href="MATLAB:web([matlabroot '/trademarks.txt'])">
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'trademarks'"/>
                    </xsl:call-template>
                  </a>
                </li>
                <li class="footernav_patents">
                  <a href="MATLAB:web([matlabroot '/patents.txt'])">
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'patents'"/>
                    </xsl:call-template>
                  </a>
                </li>
                <li class="footernav_help">
                  <a href="MATLAB:web(matlab.internal.licenseAgreement)">
                    <xsl:call-template name="getString">
                      <xsl:with-param name="key" select="'terms_of_use'"/>
                    </xsl:call-template>
                  </a>
                </li>
              </ul>
              <div class="copyright">&copy; 1994-<xsl:value-of select="$copyrightYear"/> The MathWorks, Inc.</div>
            </div>
          </div>
        </section>
      <xsl:text disable-output-escaping="yes">&#x3C;/@body&#x3E;&#x0A;</xsl:text>
    <xsl:text disable-output-escaping="yes">&#x3C;/@html&#x3E;&#x0A;</xsl:text>
  </xsl:template>

  <!-- Return a string based on an input key -->
  <xsl:template name="getString">
    <xsl:param name="key"/>
    <xsl:choose>
      <!-- First test if string is available in current locale, unless current locale is English -->
      <xsl:when test="(string-length($locale) &gt; 0) and file:exists(file:new(concat($docRoot,'/templates/',$localized_StringFile))) and document($localized_StringFile)//string[@key=$key]" xmlns:file="java.io.File">
        <xsl:copy-of select="document($localized_StringFile)//string[@key=$key]/node()"/>
      </xsl:when>
      <!-- Then test if string is available in the English string file -->
      <xsl:when test="file:exists(file:new(concat($docRoot,'/templates/',$en_US_StringFile))) and document($en_US_StringFile)//string[@key=$key]" xmlns:file="java.io.File">
        <xsl:copy-of select="document($en_US_StringFile)//string[@key=$key]/node()"/>
      </xsl:when>
      <!-- Otherwise return a warning message -->
      <xsl:otherwise>
        <xsl:message>
          <xsl:text>Warning: no string with key '</xsl:text>
          <xsl:value-of select="$key"/>
          <xsl:text>' found in string file for locale '</xsl:text>
          <xsl:value-of select="$locale"/>
          <xsl:text>' (empty if current locale is English) or English.</xsl:text>
        </xsl:message>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:transform>
