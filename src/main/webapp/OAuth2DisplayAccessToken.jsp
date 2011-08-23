<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
	<s:include value="%{getText('app.includes.head')}" />
</head>

<body>
	<s:include value="%{getText('app.includes.body_header')}" />

    <div style="width: 500px; float: left;">
        <p style="word-wrap: break-word;"><strong>Id:</strong><br/>             <s:text name="result.id"/></p>
        <p style="word-wrap: break-word;"><strong>Access Token:</strong><br/>   <s:text name="result.accessToken"/></p>
        <p style="word-wrap: break-word;"><strong>Refresh Token:</strong><br/>  <s:text name="result.refreshToken"/></p>
        <p><strong>Issued At:</strong><br/>      <s:text name="result.issuedAt"/></p>
        <p><strong>Instance URL:</strong><br/>   <s:text name="result.instanceUrl"/></p>

        <hr/>

        <p>
            <strong>Examples Accessing Salesforce as User</strong><br/>
            <ul>
                <li><a target="_blank" href="<s:text name="result.id"/>?oauth_token=<s:text name="result.accessToken"/>">Identity</a></li>
                <li><a target="_blank" href="http://ryanbrainard.com/workbench/login.php?sid=<s:text name="result.accessToken"/>&serverUrlPrefix=<s:text name="result.instanceUrl"/>">Workbench</a></li>
            </ul>
        </p>
    </div>

    <div style="float: right;">
        <img src="<s:url value="%{getText('img.oauth.2_0.webapp.flow5')}"/>" border="0"/>
    </div>

    <div style="clear: both;">
    </div>

	<s:include value="%{getText('app.includes.body_footer')}" />
</body>

</html>