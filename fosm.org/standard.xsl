<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp '&#160;'> ]>
<!--
    Standard Page Elements
    Derived from http://git.openstreetmap.org/?p=rails.git;a=blob;f=app/views/user/login.html.erb;h=cf7f4a8198097a2753e4bc4d20f46cc2de4f6d85;hb=HEAD
    Copyright (C) 2010 OpenStreetMap, George James

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->
<xsl:stylesheet
 version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template name="head">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta name="description" content="FOSM. Free maps created by a global community of volunteers. Licensed for use freely with attribution and share-alike (CC-BY-SA)." />
    <meta name="keywords" content="FOSM, OSM, Map, free, CC-BY-SA, wiki, geodata, cartography, ODbL" />

    <script src="javascripts/prototype.js" type="text/javascript"></script>
    <script src="javascripts/site.js" type="text/javascript"></script>

    <link href="stylesheets/common.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="stylesheets/large.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="stylesheets/small.css" media="only screen and (max-width: 481px)" rel="stylesheet" type="text/css" />
    <link href="stylesheets/large.css" media="screen and (min-width: 482px)" rel="stylesheet" type="text/css" />
    <link href="stylesheets/print.css" media="print" rel="stylesheet" type="text/css" />
    <style>
      .hidden { display: none }
      .hide_if_logged_in { display: none }
      .hide_if_user_ { display: none }
      .show_if_user_ { display: inline }
      .hide_unless_administrator { display: none }
    </style>
</xsl:template>




<xsl:template name="notice">
  <div id="notice">
    FOSM is licensed under Creative Commons CC-BY-SA 2.0 :: More data than OSM and a better license for contributors.
  </div>
</xsl:template>


<xsl:template name="greeting">
  <span id="greeting">
  <xsl:choose>
    <xsl:when test='/Form[@name]!=""'>
      <span id="full-greeting">Welcome, <a href="/user/{/Form/@name}" title="Your user page"><xsl:value-of select='/Form/@name'/></a></span>
	| 
      <a href="/logout?referer=%2F" 
           id="logoutanchor" 
           onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = '/logout?referer=%2F&amp;session=xxx';f.submit();return false;" 
           title="Log out">
        logout
      </a>
    </xsl:when>
    <xsl:otherwise>
      <a href="/login" id="loginanchor" title="Log in with an existing account">log in</a> |
      <a href="/user/new" id="registeranchor" title="Create an account for editing">sign up</a>
    </xsl:otherwise>
  </xsl:choose>
  </span>
</xsl:template>


<xsl:template name="tabnav">
    <div>
      <ul id="tabnav">
<!--        <li><a href="/poly/tah.html#2.00/34.4/-5.9" class="" id="viewanchor" title="View the maps">Maps</a></li> -->
        <li><a href="/edit?lat=39.64216340529536&amp;lon=-104.95982455511339&amp;zoom=18" class="" id="editanchor" title="Contribute content to the maps">Contribute</a></li>
      </ul>
    </div>
</xsl:template>


<xsl:template name="left">

    <div id="left">


      <div id="logo">
        <center>

          <h1>FOSM</h1>
          <a href="/"><img alt="FOSM logo" border="0" height="120" src="images/FreeOSM_logo.png" width="120" /></a><br/>
          <h2 class="nowrap">A Free Wiki World Map</h2>
        </center>
      </div>


      <div id="intro">
        <p>
          FOSM is a liberally licensed and community created map of this planet.
        </p>
        <p>
          FOSM allows you to collaboratively create and use maps of anywhere and everywhere.
        </p>
        <p>
        FOSM is built and supported by the community.
        </p>

      </div>





      <div id="left_menu" class="left_menu">
<!--        <a href="/contribute" title="Learn how to contribute to the maps">Contribute</a><br /> 
        <a href="/copyright" title="Learn how the content is protected by copyright">Copyright</a><br />
        <a href="/license" title="Learn about the liberal license under which you can use FOSM content">License</a><br />
        <a href="/attribution" title="Learn about who has contributed to the FOSM map">Attribution</a><br />
-->
      </div>



      <center>
<!--        <div class="donate">
          <a href="/donate" title="Give some money to support FOSM">Donations</a>
        </div>
-->
      </center>

    </div>

</xsl:template>

<xsl:template match="Errors">

  <div class="errorExplanation" id="errorExplanation">
    <h2>There were <xsl:value-of select='count(Error)'/> errors with this form</h2>
    <ul>
    <xsl:apply-templates select="Error"/>
    </ul>
  </div>

</xsl:template>


<xsl:template match="/Form/Errors/Error">
  <li><xsl:value-of select='.'/></li>
</xsl:template>


<xsl:template match="Message">

  <div class="errorExplanation" id="errorExplanation">
    <h2><xsl:value-of select='@title'/></h2>
    <p><xsl:value-of select='.'/></p>
  </div>

</xsl:template>


</xsl:stylesheet>
