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
        <meta name="DC.Description" content="${orgNameLong} (${orgNameShort}) is an online resource that provides immediate access to the wealth of plant specimen information held by Australian herbaria. ${orgNameShort} is a collaborative project of the state, Commonwealth and territory herbaria, developed under the auspices of the Council of Heads of Australasian Herbaria (CHAH), representing the major Australian collections." />
        <meta name="DC.Creator" content="jurisdiction:Australian Government Departmental Consortium;corporateName:Council of Heads of Australasian Herbaria" />
        <meta name="DC.Publisher" content="jurisdiction:Australian Government Departmental Consortium;corporateName:Council of Heads of Australasian Herbaria" />
        <meta name="DC.Type.Category" content="document" />
        <meta name="DC.Format" content="text/html" />
        <meta name="DC.Language" content="en_AU" scheme="RFC3066" />
        <meta name="DC.Coverage.Jurisdiction" content="Australian Government Departmental Consortium" />
        <meta name="DC.Coverage.PlaceName" content="Australia, world" />
        <meta name="DC.Audience" content="Botanists, horticulturalists, biologists, ecologists, environmentalists, conservationists, land managers, educators, students, historians, general public" />
        <meta name="DC.Availability" content="Freely available. Some parts of this resource are username and password restricted" />
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
    <!-- Header -->
%{--    <!-- Navbar -->--}%
%{--    <div id="asbp-nav" class="navbar navbar-default">--}%
%{--        <div class="${containerType}">--}%
%{--            <div class="navbar-inner">--}%
%{--                <div class="navbar-header">--}%
%{--                    <button type="button" class="navbar-toggle collapsed" --}%
%{--                            data-toggle="collapse" data-target=".navbar-collapse" --}%
%{--                            aria-expanded="false">--}%
%{--                        <span class="sr-only">Toggle navigation</span>--}%
%{--                        <span class="icon-bar"></span>--}%
%{--                        <span class="icon-bar"></span>--}%
%{--                        <span class="icon-bar"></span>--}%
%{--                    </button>--}%
%{--                </div>--}%
%{--                <div class="collapse navbar-collapse">--}%
%{--                    <ul class="nav navbar-nav">--}%
%{--                        <li><a href="${asbpHome}"><i class="fa fa-home"></i></a></li>--}%
%{--                        <li><a href="${serverName}/search/#tab_simpleSearch">Search</a></li>--}%
%{--                        <li><a href="${asbpHome}/about/">About ${orgNameShort}</a></li>--}%
%{--                        <li class="dropdown font-xsmall">--}%
%{--                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Help<span class="caret"></span></a>--}%
%{--                            <ul class="dropdown-menu" role="menu">--}%
%{--                                <li><a href="${asbpHome}/using-asbp">Using ${orgNameShort}</a></li>--}%
%{--                                <li><a href="${asbpHome}/data/">Data</a></li>--}%
%{--                                <li><a href="${request.contextPath}/fields">Download fields</a></li>--}%
%{--                            </ul>--}%
%{--                        </li>--}%
%{--                        <li><a href="${asbpHome}/news">News</a></li>--}%
%{--                    </ul>--}%
%{--                    <ul class="nav navbar-nav pull-right">--}%
%{--                        <li><a href="https://www.facebook.com/AustVirtHerb"><i class="fa fa-facebook-square"></i></a></li>--}%
%{--                    </ul>--}%
%{--                </div>--}%
%{--            </div><!-- /.navbar-inner -->--}%
%{--        </div><!-- .container -->--}%
%{--    </div><!-- /.navbar -->--}%
    <!-- Start Nav !-->
%{--    <g:render template="nav" />--}%
    <div data-elementor-type="header" data-elementor-id="876" class="elementor elementor-876 elementor-location-header">
        <div class="elementor-section-wrap">
            <header class="elementor-section elementor-top-section elementor-element elementor-element-69960df5 elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="69960df5" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-1b07c5b4" data-id="1b07c5b4" data-element_type="column">
                            <div class="elementor-column-wrap elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-47e899 logo elementor-widget elementor-widget-theme-site-logo elementor-widget-image" data-id="47e899" data-element_type="widget" data-widget_type="theme-site-logo.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-image">
                                                <a href="https://www.seedpartnership.org.au">
                                                    <img width="800" height="380" src="https://www.seedpartnership.org.au/wp-content/uploads/logo.svg" class="attachment-full size-full" alt="">								</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-2a1ffa58" data-id="2a1ffa58" data-element_type="column">
                            <div class="elementor-column-wrap elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-e4233f6 icon-vertical-center elementor-hidden-desktop elementor-view-default elementor-widget elementor-widget-icon" data-id="e4233f6" data-element_type="widget" data-widget_type="icon.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-icon-wrapper">
                                                <a class="elementor-icon" href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6IjM4NTgiLCJ0b2dnbGUiOmZhbHNlfQ%3D%3D">
                                                    <i aria-hidden="true" class="fas fa-bars"></i>			</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-73de2216 elementor-nav-menu--stretch elementor-nav-menu__text-align-center elementor-nav-menu__align-right elementor-hidden-tablet elementor-hidden-mobile elementor-nav-menu--dropdown-tablet elementor-nav-menu--toggle elementor-nav-menu--burger elementor-widget elementor-widget-nav-menu" data-id="73de2216" data-element_type="widget" data-settings="{&quot;full_width&quot;:&quot;stretch&quot;,&quot;layout&quot;:&quot;horizontal&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;<i class=\&quot;fas fa-caret-down\&quot;><\/i>&quot;,&quot;library&quot;:&quot;fa-solid&quot;},&quot;toggle&quot;:&quot;burger&quot;}" data-widget_type="nav-menu.default">
                                        <div class="elementor-widget-container">
                                            <nav migration_allowed="1" migrated="0" role="navigation" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-horizontal e--pointer-text e--animation-none">
                                                <ul id="menu-1-73de2216" class="elementor-nav-menu" data-smartmenus-id="1652248348346284"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-8 current_page_item menu-item-25"><a href="https://www.seedpartnership.org.au/" aria-current="page" class="elementor-item elementor-item-active">Home</a></li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-544"><a href="https://www.seedpartnership.org.au/news/" class="elementor-item has-submenu" id="sm-1652248348346284-1" aria-haspopup="true" aria-controls="sm-1652248348346284-2" aria-expanded="false">News<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-1652248348346284-2" role="group" aria-hidden="true" aria-labelledby="sm-1652248348346284-1" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-915"><a href="https://www.seedpartnership.org.au/category/announcements/" class="elementor-sub-item">Announcements</a></li>
                                                            <li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-917"><a href="https://www.seedpartnership.org.au/category/general-news/" class="elementor-sub-item">General News</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-505"><a href="https://www.seedpartnership.org.au/about-us/" class="elementor-item has-submenu" id="sm-1652248348346284-3" aria-haspopup="true" aria-controls="sm-1652248348346284-4" aria-expanded="false">About Us<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-1652248348346284-4" role="group" aria-hidden="true" aria-labelledby="sm-1652248348346284-3" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-23"><a href="https://www.seedpartnership.org.au/contact-us/" class="elementor-sub-item">Contact Us</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-504"><a href="https://www.seedpartnership.org.au/about-us/what-we-do/" class="elementor-sub-item">What We Do</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-584"><a href="https://www.seedpartnership.org.au/about-us/vision-and-mission/" class="elementor-sub-item">Vision and Mission</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-519"><a href="https://www.seedpartnership.org.au/about-us/strategies-and-reports/" class="elementor-sub-item">Strategies and Reports</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-585"><a href="https://www.seedpartnership.org.au/about-us/governance/" class="elementor-sub-item">Governance</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-601"><a href="https://www.seedpartnership.org.au/initiatives/" class="elementor-item has-submenu" id="sm-1652248348346284-5" aria-haspopup="true" aria-controls="sm-1652248348346284-6" aria-expanded="false">Initiatives<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-1652248348346284-6" role="group" aria-hidden="true" aria-labelledby="sm-1652248348346284-5" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-602"><a href="https://www.seedpartnership.org.au/initiatives/australian-seed-bank-online/" class="elementor-sub-item">Australian Seed Bank Online</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2151"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/" class="elementor-sub-item has-submenu" id="sm-1652248348346284-7" aria-haspopup="true" aria-controls="sm-1652248348346284-8" aria-expanded="false">Bushfire Recovery<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                                <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-1652248348346284-8" role="group" aria-hidden="true" aria-labelledby="sm-1652248348346284-7" aria-expanded="false">
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2762"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/banking-on-seeds-for-bushfire-recovery/" class="elementor-sub-item">Banking on seeds for bushfire recovery</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2761"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/emergency-assessment-and-collection-project/" class="elementor-sub-item">Emergency Assessment and Collection Project</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2760"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/emergency-seed-collecting-fund/" class="elementor-sub-item">Emergency Seed Collecting Fund</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3187"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/island-alps-and-forests/" class="elementor-sub-item">Island, Alps, and Forests</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2763"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/project-phoenix/" class="elementor-sub-item">Project Phoenix</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2265"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/the-rare-bloom-project/" class="elementor-sub-item">The Rare Bloom Project™</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2801"><a href="https://www.seedpartnership.org.au/initiatives/project-target-species/" class="elementor-sub-item">Project Target Species</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3378"><a href="https://www.seedpartnership.org.au/events/" class="elementor-item has-submenu" id="sm-1652248348346284-9" aria-haspopup="true" aria-controls="sm-1652248348346284-10" aria-expanded="false">Events<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-1652248348346284-10" role="group" aria-hidden="true" aria-labelledby="sm-1652248348346284-9" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3391"><a href="https://www.seedpartnership.org.au/events/australasian-seed-science-conference-2021/" class="elementor-sub-item">Australasian Seed Science Conference 2021</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-542"><a href="https://www.seedpartnership.org.au/make-a-difference/" class="elementor-item">Make A Difference</a></li>
                                                </ul>			</nav>
                                            <div class="elementor-menu-toggle" role="button" tabindex="0" aria-label="Menu Toggle" aria-expanded="false" style="">
                                                <i aria-hidden="true" role="presentation" class="elementor-menu-toggle__icon--open eicon-menu-bar"></i><i aria-hidden="true" role="presentation" class="elementor-menu-toggle__icon--close eicon-close"></i>			<span class="elementor-screen-only">Menu</span>
                                            </div>
                                            <nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" role="navigation" aria-hidden="true" style="top: 45px; width: 1544px; left: 0px;">
                                                <ul id="menu-2-73de2216" class="elementor-nav-menu" data-smartmenus-id="165224834834866"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-8 current_page_item menu-item-25"><a href="https://www.seedpartnership.org.au/" aria-current="page" class="elementor-item elementor-item-active" tabindex="-1">Home</a></li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-544"><a href="https://www.seedpartnership.org.au/news/" class="elementor-item has-submenu" tabindex="-1" id="sm-165224834834866-1" aria-haspopup="true" aria-controls="sm-165224834834866-2" aria-expanded="false">News<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-165224834834866-2" role="group" aria-hidden="true" aria-labelledby="sm-165224834834866-1" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-915"><a href="https://www.seedpartnership.org.au/category/announcements/" class="elementor-sub-item" tabindex="-1">Announcements</a></li>
                                                            <li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-917"><a href="https://www.seedpartnership.org.au/category/general-news/" class="elementor-sub-item" tabindex="-1">General News</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-505"><a href="https://www.seedpartnership.org.au/about-us/" class="elementor-item has-submenu" tabindex="-1" id="sm-165224834834866-3" aria-haspopup="true" aria-controls="sm-165224834834866-4" aria-expanded="false">About Us<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-165224834834866-4" role="group" aria-hidden="true" aria-labelledby="sm-165224834834866-3" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-23"><a href="https://www.seedpartnership.org.au/contact-us/" class="elementor-sub-item" tabindex="-1">Contact Us</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-504"><a href="https://www.seedpartnership.org.au/about-us/what-we-do/" class="elementor-sub-item" tabindex="-1">What We Do</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-584"><a href="https://www.seedpartnership.org.au/about-us/vision-and-mission/" class="elementor-sub-item" tabindex="-1">Vision and Mission</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-519"><a href="https://www.seedpartnership.org.au/about-us/strategies-and-reports/" class="elementor-sub-item" tabindex="-1">Strategies and Reports</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-585"><a href="https://www.seedpartnership.org.au/about-us/governance/" class="elementor-sub-item" tabindex="-1">Governance</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-601"><a href="https://www.seedpartnership.org.au/initiatives/" class="elementor-item has-submenu" tabindex="-1" id="sm-165224834834866-5" aria-haspopup="true" aria-controls="sm-165224834834866-6" aria-expanded="false">Initiatives<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-165224834834866-6" role="group" aria-hidden="true" aria-labelledby="sm-165224834834866-5" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-602"><a href="https://www.seedpartnership.org.au/initiatives/australian-seed-bank-online/" class="elementor-sub-item" tabindex="-1">Australian Seed Bank Online</a></li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2151"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/" class="elementor-sub-item has-submenu" tabindex="-1" id="sm-165224834834866-7" aria-haspopup="true" aria-controls="sm-165224834834866-8" aria-expanded="false">Bushfire Recovery<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                                <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-165224834834866-8" role="group" aria-hidden="true" aria-labelledby="sm-165224834834866-7" aria-expanded="false">
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2762"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/banking-on-seeds-for-bushfire-recovery/" class="elementor-sub-item" tabindex="-1">Banking on seeds for bushfire recovery</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2761"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/emergency-assessment-and-collection-project/" class="elementor-sub-item" tabindex="-1">Emergency Assessment and Collection Project</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2760"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/emergency-seed-collecting-fund/" class="elementor-sub-item" tabindex="-1">Emergency Seed Collecting Fund</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3187"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/island-alps-and-forests/" class="elementor-sub-item" tabindex="-1">Island, Alps, and Forests</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2763"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/project-phoenix/" class="elementor-sub-item" tabindex="-1">Project Phoenix</a></li>
                                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2265"><a href="https://www.seedpartnership.org.au/initiatives/bushfire-recovery/the-rare-bloom-project/" class="elementor-sub-item" tabindex="-1">The Rare Bloom Project™</a></li>
                                                                </ul>
                                                            </li>
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2801"><a href="https://www.seedpartnership.org.au/initiatives/project-target-species/" class="elementor-sub-item" tabindex="-1">Project Target Species</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3378"><a href="https://www.seedpartnership.org.au/events/" class="elementor-item has-submenu" tabindex="-1" id="sm-165224834834866-9" aria-haspopup="true" aria-controls="sm-165224834834866-10" aria-expanded="false">Events<span class="sub-arrow"><i class="fas fa-caret-down"></i></span></a>
                                                        <ul class="sub-menu elementor-nav-menu--dropdown" id="sm-165224834834866-10" role="group" aria-hidden="true" aria-labelledby="sm-165224834834866-9" aria-expanded="false">
                                                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3391"><a href="https://www.seedpartnership.org.au/events/australasian-seed-science-conference-2021/" class="elementor-sub-item" tabindex="-1">Australasian Seed Science Conference 2021</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-542"><a href="https://www.seedpartnership.org.au/make-a-difference/" class="elementor-item" tabindex="-1">Make A Difference</a></li>
                                                </ul>			</nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-1a599ab8" data-id="1a599ab8" data-element_type="column">
                            <div class="elementor-column-wrap elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-1a312465 elementor-search-form--skin-classic elementor-search-form--button-type-icon elementor-search-form--icon-search elementor-widget elementor-widget-search-form" data-id="1a312465" data-element_type="widget" data-settings="{&quot;skin&quot;:&quot;classic&quot;}" data-widget_type="search-form.default">
                                        <div class="elementor-widget-container">
                                            <form class="elementor-search-form" role="search" action="https://www.seedpartnership.org.au" method="get">
                                                <div class="elementor-search-form__container">
                                                    <input placeholder="Search..." class="elementor-search-form__input" type="search" name="s" title="Search" value="">
                                                    <button class="elementor-search-form__submit" type="submit" title="Search" aria-label="Search">
                                                        <i aria-hidden="true" class="fas fa-search"></i>							<span class="elementor-screen-only">Search</span>
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>
    </div>
    <!-- End Nav -->

    <div id="site-branding" class="site-branding">
        <div class="${containerType}">
            <div class="site-logo"><asset:image src="asbp/avh-logo-white-80.png" alt="" /></div>
            <div class="site-header">
                <h1 class="site-title"><a href="${asbpHome}" rel="home">${orgNameShort}</a></h1>
                <h2 class="site-description">${orgNameLong}</h2>
            </div>
            <div class="span6 pull-right" id="rightMenu">
                <%--<a href="http://www.ala.org.au/my-profile/"><div id='loginId'>Logged in as niels.klazenga@rbg.vic.gov.au</div></a>--%>
                <g:set var="loginId"><alatag:loggedInUserDisplayname/></g:set>
                <a href="${userdetailsBaseUrl}/my-profile/">${loginId}</a>
                <g:if test="${loginId}">|</g:if>
                <g:set var="returnUrlPath" value="${serverName}${request.requestURI}${request.queryString ? '?' : ''}${request.queryString}"/>
                <auth:loginLogout logoutUrl="${request.contextPath}/logout/logout" returnUrlPath="${returnUrlPath}"/>
                %{--<g:if test="${clubView}">--}%
                %{--| <div id="clubView"><span>Club View</span></div>--}%
                %{--</g:if>--}%
            </div>
        </div>
    </div><!-- .site-branding -->
    <!-- End header -->

    <div id="main-content" class="${containerType} content">
        <plugin:isAvailable name="alaAdminPlugin">
            <ala:systemMessage/>
        </plugin:isAvailable>
        <g:layoutBody />
    </div>

    <!-- Footer -->
    <footer id="colophon" class="site-footer" role="contentinfo">
        <div class="${containerType}">
            <div class="row">
                <aside id="text-3" class="widget col-sm-6  clearfix widget_text powered-by">
                    <div class="textwidget">
                       %{-- <a href="http://ala.org.au/">
                            <r:img dir="images" file="atlas-poweredby_rgb-lightbg.png" plugin="biocache-hubs" alt="Powered by ALA logo"/></a>--}%
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
    <!-- End footer -->

    <script type="text/javascript">
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-4355440-1', 'auto');
        ga('send', 'pageview');
    </script>

    <asset:javascript src="seedpartnership.js"/>
    <asset:deferredScripts />
    </body>
</html>
