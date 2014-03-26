<%--
    Document   : asbp-skin.jsp (sitemesh decorator file)
    Created on : 11/10/2012, 11:20
    Author     : dos009
--%><%@
taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %><%@
taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %><%@
include file="/common/taglibs.jsp" %>
<c:set var="section"><decorator:getProperty property="meta.section"/></c:set>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">    
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><decorator:title default="Australian Seed Bank"/></title>
    <link rel="shortcut icon" href="http://seedpartnership.org.au/sites/default/files/favicon_32px_0.ico" type="image/vnd.microsoft.icon" />
    <meta name="viewport" content="width=device-width, initial-scale=0.8, maximum-scale=1">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link id="responsiveCss" rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/static/css/bootstrap-responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
    <%--<!--css from ala - to replace with full url-->--%>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/asbp/tabs-no-images.css" type="text/css" media="screen" />--%>
    <!--css for asbp-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ala/bootstrapAdditions.css" type="text/css" media="screen,projection" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/asbp/asbp_ala_seedhub.css" type="text/css" media="screen" />

    <%@ include file="commonJS.jspf" %>

    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${initParam.centralServer}/wp-content/themes/ala2011/scripts/html5.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/respond.min.js"></script>
    <![endif]-->
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/autocomplete.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/base.css" type="text/css" media="screen" />
    <decorator:head />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/asbp/hub-additions.css" type="text/css" media="screen" />

</head>
<body>
<div id="main_content" class="container">
    <!--Header-->
    <div id="header">
        <a href="http://seedpartnership.org.au/" title="Home" rel="home" id="logo">
            <img src="http://seedpartnership.org.au/sites/default/files/seedbank_logo_0.png" alt="Home" border="0"/>
        </a>
        <!--Menu-->
        <div id="nice_menus-1">
            <ul class="nice-menu">
                <li class="active-trail"><a class="${(empty section || section!='help')?'active':''}" href="${pageContext.request.contextPath}/query">Search</a></li>
                <li><a class="${(section=='help')?'active':''}" href="${pageContext.request.contextPath}/help/help.html">Help</a></li>
                <li class="hidden-phone"><a href="http://seedpartnership.org.au/about/aboutus" title="About Us">About Us</a></li>
                <li class="hidden-phone"><a href="http://seedpartnership.org.au/initiatives">Initiatives</a></li>
                <li class="hidden-phone"><a href="http://seedpartnership.org.au/partners" title="Partners and Associates">Partners and Associates</a></li>
                <li class="hidden-phone"><a href="http://seedpartnership.org.au/contact" title="Contact">Contact</a></li>
                <li><a href="http://seedpartnership.org.au/">ASBP Home</a></li>
            </ul>
        </div>
    </div><!--end Header-->
    <div id="content">
        <decorator:body />
    </div>

</div><!--end main_content-->

<!--Footer-->
<div class="footer container">
    <div style="background: url(http://seedpartnership.org.au/sites/all/themes/seedbank/images/footer_slogan.gif) no-repeat right bottom; height: 42px; vertical-align: top"></div>
    <div style="font-size: 0.75em; float:left;">Copyright &copy; 2012 Council of Heads of Australian Botanic Gardens Inc. (CHABG)</div>
    <div style="font-size: 0.75em; text-align:right;"><a href="http://seedpartnership.org.au/privacy">Privacy &amp; Disclaimer</a></div>
    <div style="float: right;"><a href="http://www.ala.org.au/" target="_black"><img src="${pageContext.request.contextPath}/static/images/atlas-poweredby_rgb-lightbg.png" alt="" border="0"/></a></div>
</div>

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
</body>
</html>