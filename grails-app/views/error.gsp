<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <asset:link rel="shortcut icon" href="favicon.ico" />

    <title>Error | ${orgNameLong}</title>
</head>
<body>
<div class="errors">
    <h1>
        An error occurred:
    </h1>
    <ul class="errors">
        <g:renderException exception="${exception}" />
    </ul>
    <g:if test="${flash.message}">
        <ul class="errors">
            <li>${flash.message}</li>
        </ul>
    </g:if>
</div>
</body>
</html>
