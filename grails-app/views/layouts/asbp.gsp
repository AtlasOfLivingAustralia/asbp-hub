%{--
  - Copyright (C) 2014 Atlas of Living Australia
  - All Rights Reserved.
  -
  - The contents of this file are subject to the Mozilla Public
  - License Version 1.1 (the "License"); you may not use this file
  - except in compliance with the License. You may obtain a copy of
  - the License at http://www.mozilla.org/MPL/
  -
  - Software distributed under the License is distributed on an "AS
  - IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
  - implied. See the License for the specific language governing
  - rights and limitations under the License.
  --}%

<%--
  Created by IntelliJ IDEA.
  User: dos009@csiro.au
  Date: 5/03/2014
  Time: 1:48 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<g:set var="serverName" value ="${grailsApplication.config.serverName}"/>
<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<g:set var="asbpHome" value="${grailsApplication.config.organisation.baseUrl}"/>
<g:set var="userdetailsBaseUrl" value="${grailsApplication.config.userdetails.baseUrl}"/>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="http://www.naa.gov.au/recordkeeping/gov_online/agls/1.1" rel="schema.AGLS" />
        <alatag:addApplicationMetaTags/>
        <meta name="DC.Title" content="Partners" lang="en" />	<meta name="DC.Function" content="Public information" />
        <!-- UPDATE BELOW -->
        <meta name="DC.Description" content="${orgNameLong} (${orgNameShort}) is an online resource that provides immediate access to the wealth of plant specimen information held by Australian Seedbanks. ${orgNameShort} is a collaborative project of the state, Commonwealth and territory seedbanks, developed under the auspices of the Council of Heads of Australasian Herbaria (CHAH), representing the major Australian collections." />
        <!-- UPDATE BELOW -->
        <meta name="DC.Creator" content="jurisdiction:Australian Government Departmental Consortium;corporateName:Council of Heads of Australasian Herbaria" />
        <!-- UPDATE BELOW -->
        <meta name="DC.Publisher" content="jurisdiction:Australian Government Departmental Consortium;corporateName:Council of Heads of Australasian Herbaria" />
        <meta name="DC.Type.Category" content="document" />
        <meta name="DC.Format" content="text/html" />
        <meta name="DC.Language" content="en_AU" scheme="RFC3066" />
        <meta name="DC.Coverage.Jurisdiction" content="Australian Government Departmental Consortium" />
        <meta name="DC.Coverage.PlaceName" content="Australia, world" />
        <meta name="DC.Audience" content="Botanists, horticulturalists, biologists, ecologists, environmentalists, conservationists, land managers, educators, students, historians, general public" />
        <meta name="DC.Availability" content="Freely available. Some parts of this resource are username and password restricted" />
        <!-- UPDATE BELOW -->
        <meta name="DC.Rights" content="(c) Council of Heads of Australasian Herbaria, 2010" />
        <meta name="DC.Rights" content="Unless other stated, Intellectual Property associated with this resource resides with the Council of Heads of Australasian Herbaria and individual herbaria. Applications, source code and data are freely available for research, non-commercial and public good purposes" />
        <meta name="viewport" content="width=device-width, initial-scale=0.8, maximum-scale=1">
        <asset:link rel="shortcut icon" href="asbp/favicon.ico" />
        <link rel='stylesheet' id='google_fonts-css'  href='//fonts.googleapis.com/css?family=Lato:300,400,700|Raleway:400,300,700' type='text/css' media='screen' />

        <!-- Seedpartnership.org Google Fonts -->
        <link rel='stylesheet' id='google-fonts-1-css'  href='https://fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto+Slab%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto+Condensed%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CAbel%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&#038;display=auto&#038;ver=a6be6a1f21695f3986a0b0267ff3aacb' type='text/css' media='all' />

        <title><g:layoutTitle /></title>

        <asset:javascript src="asbp.js"/>
        <asset:javascript src="biocache-hubs.js" />

        <g:render template="/layouts/global" plugin="biocache-hubs"/>

        <asset:stylesheet src="third-party-styles.css"/>
        <asset:stylesheet src="seedpartnership.css"/>
        <asset:stylesheet src="asbp.css"/>

        <g:layoutHead />

    </head>
    <body class="${pageProperty(name:'body.class')?:'nav-datasets'} elementor-kit-829" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
    <g:set var="fluidLayout" value="${pageProperty(name:'meta.fluidLayout')?:grailsApplication.config.skin?.fluidLayout}"/>
    <g:set var="containerType" value="${fluidLayout ? 'container-fluid' : 'container'}"/>

    <!-- Start Nav !-->
    <g:render template="/layouts/nav" />
    <!-- End Nav -->

    <div id="site-branding" class="site-branding">
        <g:set var="loginId"><alatag:loggedInUserDisplayname/></g:set>
        <div><i class="fas fa-user fa-lg"></i></div>
        <a href="${userdetailsBaseUrl}/my-profile/">${loginId}</a>
        <g:if test="${loginId}">|</g:if>
        <g:set var="returnUrlPath" value="${serverName}${request.requestURI}${request.queryString ? '?' : ''}${request.queryString}"/>
        <auth:loginLogout logoutUrl="${request.contextPath}/logout/logout" returnUrlPath="${returnUrlPath}"/>
    </div><!-- .site-branding -->
    <!-- End header -->

    <div id="main-content" class="${containerType} content">
        <plugin:isAvailable name="alaAdminPlugin">
            <ala:systemMessage/>
        </plugin:isAvailable>
        <g:layoutBody />
    </div>

    <!-- Footer -->
    <div class="colophon-wrapper">
        <footer id="colophon" class="site-footer" role="contentinfo">
            <div class="${containerType}">
                <div class="row">
                    <aside id="text-3" class="widget col-sm-6  clearfix widget_text powered-by">
                        <div class="textwidget">
                            <a href="http://ala.org.au/">
                                <r:img dir="images" file="atlas-poweredby_rgb-lightbg.png" plugin="biocache-hubs" alt="Powered by ALA logo"/></a>
                            <a href="https://ala.org.au/"><asset:image src="ALA-powered-by-logo-inline.png" class="poweredByAlaLogo"></asset:image></a>
                        </div>
                    </aside>
                    <aside id="text-2" class="widget col-sm-6  clearfix widget_text contact-us">
                        <div class="textwidget">
                            <a href="${asbpHome}/contact-us">Contact us</a>
                        </div>
                    </aside>
                </div><!-- .row -->
            </div><!-- .container -->
        </footer><!-- #colophon -->
    </div>
%{--    <g:render template="/layouts/footer" />--}%
    <!-- End footer -->

    <script type="text/javascript">
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-4355440-1', 'auto');
        ga('send', 'pageview');
    </script>

    <asset:stylesheet href="seedpartnership/animations.min.css" />
    <asset:javascript src="seedpartnership/seedpartnership.js"/>

    <asset:deferredScripts />
    </body>
</html>
