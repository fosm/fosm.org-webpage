<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp '&#160;'> ]>
<!--
    FOSM :: Home
    Copyright (C) 2010 George James

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

<xsl:import href='standard.xsl'/>

<xsl:output method="html"
    media-type="text/html"
    doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
    cdata-section-elements="script style"
    indent="yes"
    encoding="iso-8859-1"/>


<xsl:template match="/Form">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
  <head>
    <xsl:call-template name="head"/>
    <title>FOSM :: A free wiki world map</title>
  </head>
  <body>
    <div id="content">

      <xsl:call-template name="notice"/>

      <h2>FOSM :: Free OSM</h2>

<!-- If there's a message then display it here -->
<xsl:apply-templates select="Message"/>

    <p class='emphasis'>FOSM is a free map of the planet which anyone can use and contribute to.  It is very similar to OpenStreetMap
	except that it has more data and is licensed under the well-known Creative Commons attribution
	and share-alike license CC-BY-SA.</p>

    <p>Currently FOSM provides a reasonably functional API, but not all methods are available at this time.  Edits to existing OpenStreetMap content is

mirrored here normally within just a few minutes.</p>

    <p>Editing is now beta.  If you would like to try it out just <a href='/user/new'>create an account</a> and configure your favorite editor.</p>

<p><b>Potlatch.</b>  Click <a href='/p2/potlatchFosm.xml'>here</a> to edit with Potlatch 2.  This is the successor to the original Potlatch and while it's still under development I already prefer it and it's starting to be a rival to JOSM.</p>

<p><b>JOSM.</b>  The API has been tested with JOSM.  To contribute to FOSM you will need to make the following configuration change:
        <ul>
        <li>Within JOSM go to Preferences (from the menu Select Edit/Preferences or press F12).</li>
        <li>Select the Connection Settings tab, which is the second one down.</li>
        <li>Change the Base Server URL from http://www.openstreetmap.org/api to http://api.fosm.org/api</li>
        <li>Change the username and password to those of your FOSM account.</li>
        </ul>
</p>
<p><b>Merkaartor.</b>  The API has been tested with Merkaartor.  To use it you will need to make the following configuration changes:
         <ul>
         <li>Within Merkaartor go to Tools/Preferences and select the Data tab.</li>
         <li>Change the Website from http://www.openstreetmap.org to http://api.fosm.org</li>
         <li>Change the username and password to those of your FOSM account.</li>
         </ul>
</p>

<p>Diff files here: <a href='/planet/minute-replicate'>http://planet.fosm.org/planet/minute-replicate</a></p>

<p>View conflicts: <a href='/api/0.6/user/conflicts'>http://api.fosm.org/api/0.6/user/conflicts</a></p>

    <p>All geospatial content published on this site is Copyright FOSM, OpenStreetMap and contributors and licensed under CC-BY-SA 2.0</p>
<iframe src="http://www.facebook.com/widgets/like.php?href=http://www.fosm.org"
        scrolling="no" frameborder="0"
        style="border:none; width:450px; height:80px"></iframe>


    </div>

<xsl:call-template name='greeting'/>
<xsl:call-template name='tabnav'/>
<xsl:call-template name='left'/>


  </body>
</html>

</xsl:template>


</xsl:stylesheet>
