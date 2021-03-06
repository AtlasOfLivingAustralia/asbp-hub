<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<g:set var="section" value="${pageProperty(name:'meta.section')}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <alatag:addApplicationMetaTags/>
    <meta name="viewport" content="width=device-width, initial-scale=0.8, maximum-scale=1">

    <asset:link rel="shortcut icon" href="favicon.ico" />

    <title><g:layoutTitle /></title>
   %{-- <r:require modules="asbp" />--}%
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="asbp_ala_seedhub.css"/>
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
   %{-- <r:script disposition='head'>--}%
   <asset:script type="text/javascript">
        // initialise plugins
        jQuery(function(){
            // autocomplete on navbar search input
            jQuery("form#search-form-2011 input#search-2011, form#search-inpage input#search, input#search-2013").autocomplete('https://bie.ala.org.au/search/auto.jsonp', {
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
   </asset:script>
    %{--<r:layoutResources/>--}%
    <g:layoutHead />
</head>
<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
<g:set var="fluidLayout" value="${grailsApplication.config.skin.fluidLayout?.toBoolean()}"/>
<ala:systemMessage />

<div id="main_content" class="container">
    <!--Header-->
    <div id="header">
        <a href="https://seedpartnership.org.au/" title="Home" rel="home" id="logo">
            <img src="https://seedpartnership.org.au/sites/default/files/seedbank_logo_0.png" alt="Home" border="0"/>
        </a>
        <!--Menu-->
        <div id="nice_menus-1">
            <ul class="nice-menu">
                <li class="active-trail"><a class="${(!section || section!='help')?'active':''}" href="${request.contextPath}/search">Search</a></li>
                <li><a class="${(section=='help')?'active':''}" href="${request.contextPath}/help/help.html">Help</a></li>
                <li class="hidden-phone"><a href="https://seedpartnership.org.au/about/aboutus" title="About Us">About Us</a></li>
                <li class="hidden-phone"><a href="https://seedpartnership.org.au/initiatives">Initiatives</a></li>
                <li class="hidden-phone"><a href="https://seedpartnership.org.au/partners" title="Partners and Associates">Partners and Associates</a></li>
                <li class="hidden-phone"><a href="https://seedpartnership.org.au/contact" title="Contact">Contact</a></li>
                <li><a href="https://seedpartnership.org.au/">ASBP Home</a></li>
            </ul>
        </div>
    </div><!--end Header-->
    <div id="content">
        <g:layoutBody />
    </div>

</div><!--end main_content-->

<!--Footer-->
<div class="footer container">
    <div style="background: url(https://seedpartnership.org.au/sites/all/themes/seedbank/images/footer_slogan.gif) no-repeat right bottom; height: 42px; vertical-align: top"></div>
    <div style="font-size: 0.75em; float:left;">Copyright &copy; 2012 Council of Heads of Australian Botanic Gardens Inc. (CHABG)</div>
    <div style="font-size: 0.75em; text-align:right;"><a href="https://seedpartnership.org.au/privacy">Privacy &amp; Disclaimer</a></div>
    <div style="float: right;"><a href="https://www.ala.org.au/" target="_black"><asset:image src="atlas-poweredby_rgb-lightbg.png" alt="" border="0"/></a></div>
</div>

<script type="text/javascript">
    document.write(unescape("%3Cscript src='https://ssl.google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-4355440-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>

<!-- JS resources-->
<asset:deferredScripts/>
</body>
</html>
