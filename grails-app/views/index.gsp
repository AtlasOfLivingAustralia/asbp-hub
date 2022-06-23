<g:set var="hubDisplayName" value="${grailsApplication.config.skin.orgNameLong}"/>
<!DOCTYPE html>
<html>
	<head>
		<title>Home | ${hubDisplayName}</title>
		<meta name="layout" content="${grailsApplication.config.skin.layout}"/>
	</head>
	<body>
		<div id="headingBar" class="heading-bar">
			<h1>${raw(hubDisplayName)}</h1>
		</div>
		<p>Home Screen Here</p>
	</body>
</html>
