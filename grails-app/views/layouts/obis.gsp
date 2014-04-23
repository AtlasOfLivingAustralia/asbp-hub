<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="app.version" content="${g.meta(name:'app.version')}"/>
    <meta name="app.build" content="${g.meta(name:'app.build')}"/>
    <meta name="viewport" content="width=device-width, initial-scale=0.8, maximum-scale=1">

    <link rel="shortcut icon" href="${request.contextPath}/images/favicon.ico">

    <title><g:layoutTitle /></title>
    <r:require modules="obis" />
    <style type="text/css">
        body {
            background-color: #ffffff !important;
        }
        #breadcrumb {
            margin-top: 10px;
        }
        #main-content #searchInfoRow #customiseFacetsButton > .dropdown-menu {
            background-color: #ffffff;
        }
        #footer {
            margin: 20px;
            padding-top: 10px;
            border-top: 1px solid #CCC;
            font-size: 12px;
        }
        #content .nav-tabs > li.active > a {
            background-color: #ffffff;
        }
        .nav {
            margin-top: 20px;
        }
        body > #main-content {
            margin-top: 0px;
        }
        #facetWell .sidebar h3 {
            font-size: 20px;
        }
    </style>
    <r:script disposition='head'>
        // initialise plugins
        jQuery(function(){
            // autocomplete on navbar search input
            jQuery("form#search-form-2011 input#search-2011, form#search-inpage input#search, input#search-2013").autocomplete('http://bie.ala.org.au/search/auto.jsonp', {
                extraParams: {limit: 100},
                dataType: 'jsonp',
                parse: function(data) {
                    var rows = new Array();
                    data = data.autoCompleteList;
                    for(var i=0; i<data.length; i++) {
                        rows[i] = {
                            data:data[i],
                            value: data[i].matchedNames[0],
                            result: data[i].matchedNames[0]
                        };
                    }
                    return rows;
                },
                matchSubset: false,
                formatItem: function(row, i, n) {
                    return row.matchedNames[0];
                },
                cacheLength: 10,
                minChars: 3,
                scroll: false,
                max: 10,
                selectFirst: false
            });

            // Mobile/desktop toggle
            // TODO: set a cookie so user's choice is remembered across pages
            var responsiveCssFile = $("#responsiveCss").attr("href"); // remember set href
            $(".toggleResponsive").click(function(e) {
                e.preventDefault();
                $(this).find("i").toggleClass("icon-resize-small icon-resize-full");
                var currentHref = $("#responsiveCss").attr("href");
                if (currentHref) {
                    $("#responsiveCss").attr("href", ""); // set to desktop (fixed)
                    $(this).find("span").html("Mobile");
                } else {
                    $("#responsiveCss").attr("href", responsiveCssFile); // set to mobile (responsive)
                    $(this).find("span").html("Desktop");
                }
            });

            $('.helphover').popover({animation: true, trigger:'hover'});
        });
    </r:script>
    <r:layoutResources/>
    <g:layoutHead />
</head>
<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
<g:set var="fluidLayout" value="${grailsApplication.config.skin.fluidLayout?.toBoolean()}"/>
<alatag:outageBanner />

<nav>
    <div class="container">
        <ul id="nav-site">
            <li><a href="${request.contextPath}/">Home</a></li>
            <li class="${(section=='search')?'selected':''}"><a href="${request.contextPath}/search">Search</a></li>
            <li class="${(section!='search' && section!='yourArea')?'selected':''}"><a href="${request.contextPath}/occurrences/search">Records</a></li>
            <li class="${(section=='yourArea')?'selected':''}"><a href="${request.contextPath}/explore/your-area">Your Area</a></li>
        </ul>
        <ul id="nav-user">
            <li><a href="http://www.ala.org.au/my-profile/" title="My profile">My profile</a></li>
            <g:set var="returnUrlPath" value="${serverName}${request.requestURI}${request.queryString ? '?' : ''}${request.queryString}"/>
            <li class="last"><hf:loginLogout logoutUrl="${request.contextPath}/logout/logout" returnUrlPath="${returnUrlPath}"/></li>
        </ul>
    </div>
</nav>
<header id="site-header">
    <div class="container">
        <h1 title="${fullName}"><a href=""><img src="${request.contextPath}/static/images/obis/logo-small.png" /></a></h1>
        <section>
            <div id="search">
                <form name="siteSearchForm" id="siteSearchForm" action="${request.contextPath}/occurrences/search" method="GET">
                    <label for="search">Quick search</label>
                    <input id="taxaQuery" title="Search" type="text" name="taxa" placeholder="Quick search" class="ac_input freetext" value="${params.taxa}" /><button value="Search" type="submit">Search</button>
                </form>
            </div>
            <p><strong>More options</strong>: <a href="${request.contextPath}/index#tab_advanceSearch">Advanced search</a>,
                <a href="${request.contextPath}/index#tab_taxaUpload">Batch taxon search</a>,
                <a href="${request.contextPath}/index#tab_catalogUpload">Batch catalogue no. search</a>,
                <a href="${request.contextPath}/index#tab_shapeFileUpload">Shapefile search</a></p>
        </section>
    </div>
</header>
<div id="content">
    <section class="container">
        <g:layoutBody />
    </section>
</div><!-- end div#inner -->
<footer class="">
    <div class="container">
        <section class="copyright">
            <div class="img-left"><a href="http://creativecommons.org/licenses/by/3.0/au/"
                                     title="External link to Creative Commons"><img
                    src="http://www.ala.org.au/wp-content/themes/ala2011/images/creativecommons.png" width="88"
                    height="31" alt=""/></a></div>
            <p><a href="${request.contextPath}/help/termsOfUse" title="Terms of Use">Terms of Use</a> |
                <a href="${request.contextPath}/help/contactObis">Contact</a><br/>This site is licensed
                under a <a href="http://creativecommons.org/licenses/by/3.0/au/"
                           title="External link to Creative Commons" class="external">Creative Commons Attribution
                    3.0 Australia License</a>.</p>

            <div class="img-right"><a href="http://www.ala.org.au" title="Atlas of Living Australia"><img
                    src="http://www.ala.org.au/wp-content/themes/ala2011/images/poweredby-ala.png" width="178"
                    height="62" alt=""/></a></div>
        </section>
    </div>
</footer>
<%--<script type="text/javascript">--%>
    <%--var uvOptions = {};--%>
    <%--(function() {--%>
        <%--var uv = document.createElement('script'); uv.type = 'text/javascript'; uv.async = true;--%>
        <%--uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/5XG4VblqrwiubphT3ktPQ.js';--%>
        <%--var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(uv, s);--%>
    <%--})();--%>
<%--</script>--%>
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-4355440-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>

<!-- JS resources-->
<r:layoutResources/>
</body>
</html>