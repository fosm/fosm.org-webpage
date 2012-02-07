<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp '&#160;'> ]>
<!--
    FreeOSM :: Login
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
    <xsl:call-template name='head'/>
    <title>FOSM :: Create account</title>
  </head>
  <body>
    <xsl:call-template name='greeting'/>
    <xsl:call-template name='tabnav'/>
    <xsl:call-template name='left'/>


    <div id="content">
      <xsl:call-template name='notice'/>
      <h2>Create a User Account</h2>

<p>
Fill in these details and then wait for an email with instructions on how to activate your account.
</p>

<form action="/user/create" method="post">

<!-- If there's a message then display it here -->
<xsl:apply-templates select="Message"/>

<!-- If there are errors then display them here -->
<xsl:apply-templates select="Errors"/>


<table id="signupForm">
  <tr>
    <td width="300px" class="fieldName">Email Address:</td>
    <td width="400px">
      <div>
        <xsl:if test='/Form/Errors/Error[@field="userEmail"]'>
          <xsl:attribute name="class">fieldWithErrors</xsl:attribute>
        </xsl:if>
        <input id="userEmail" maxlength="255" name="userEmail" size="50" tabindex="1" type="text" value='{/Form/@userEmail}'/>
      </div>
    </td>
  </tr>
  <tr>
    <td width="300px" class="fieldName">Confirm Email Address:</td>
    <td width="400px">
      <div>
        <xsl:if test='/Form/Errors/Error[@field="userEmailConfirmation"]'>
          <xsl:attribute name="class">fieldWithErrors</xsl:attribute>
        </xsl:if>
        <input id="userEmailConfirmation" maxlength="255" name="userEmailConfirmation" size="50" tabindex="2" type="text" 

value='{/Form/@userEmailConfirmation}'/>
      </div>
    </td>
  </tr>

  <tr><td></td><td><span class="minorNote">Not displayed publicly (see <a href="/PrivacyPolicy.html" title="Privacy policy">privacy policy</a>)

</span></td></tr>

  <tr><td colspan="2">&nbsp;<!--vertical spacer--></td></tr>


  <tr>
    <td width="300px" class="fieldName">Display Name:</td>
    <td width="400px">
      <div>
        <xsl:if test='/Form/Errors/Error[@field="userDisplayName"]'>
          <xsl:attribute name="class">fieldWithErrors</xsl:attribute>
        </xsl:if>
        <input id="userDisplayName" maxlength="255" name="userDisplayName" size="30" tabindex="3" type="text" value='{/Form/@userDisplayName}'/>
      </div>
    </td>
  </tr>


  <tr><td></td><td><span class="minorNote">Your publicly displayed username. You can change this later in the preferences.</span></td></tr>

  <tr>
    <td class="fieldName">If you would like to use the same name as your OpenStreetMap name you can claim it by checking this box (recommended)</td>
    <td>
      <input type="checkbox" name="claimOsmName" id="claimOsmName" tabindex="4">
        <xsl:if test='/Form/@claimOsmName="on"'>
          <xsl:attribute name="checked">checked</xsl:attribute>
        </xsl:if>
      </input>
    </td>
  </tr>

  <tr><td colspan="2">&nbsp;<!--vertical spacer--></td></tr>

  <tr>
    <td width="300px" class="fieldName">Password:</td>
    <td width="400px">
      <div>
        <xsl:if test='/Form/Errors/Error[@field="userPassCrypt"]'>
          <xsl:attribute name="class">fieldWithErrors</xsl:attribute>
        </xsl:if>
        <input id="userPassCrypt" maxlength="255" name="userPassCrypt" size="30" tabindex="5" type="password" value='{/Form/@userPassCrypt}'/>
      </div>
    </td>
  </tr>

  <tr>
    <td width="300px" class="fieldName">Confirm Password:</td>
    <td width="400px">
      <div>
        <xsl:if test='/Form/Errors/Error[@field="userPassCryptConfirmation"]'>
          <xsl:attribute name="class">fieldWithErrors</xsl:attribute>
        </xsl:if>
        <input id="userPassCryptConfirmation" maxlength="255" name="userPassCryptConfirmation" size="30" tabindex="6" type="password" 

value='{/Form/@userPassCryptConfirmation}'/>
      </div>
    </td>
  </tr>

  <tr><td colspan="2">&nbsp;<!--vertical spacer--></td></tr>

  <tr>
    <td class='fieldName'>Copyright and License:</td>
    <td>You confirm that all content uploaded to FreeOSM via this account is contributed by you under the <a 

href='http://creativecommons.org/licenses/by-sa/2.0/'>Creative Commons Attribution Share Alike 2.0</a> License.
    </td>
  </tr>
  
  <tr><td colspan="2">&nbsp;<!--vertical spacer--></td></tr>

  <tr><td></td><td align="right"><input type="submit" value="Create Account" tabindex="6"/></td></tr>
</table>
</form>


    </div>

  </body>
</html>
</xsl:template>


</xsl:stylesheet>
