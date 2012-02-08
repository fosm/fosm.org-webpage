/*****************************************************************************/
/* fosm.org New User Form Validation                                         */
/* Copyright Kevin Peat 2012                                                 */
/*****************************************************************************/

/*****************************************************************************/
/* New user form validation                                                  */
/*****************************************************************************/
function validateNewUserForm(){

	if (document.forms['signupForm'].userEmail.value == ""){
		alert("Please enter an email address")
		document.forms['signupForm'].userEmail.focus()
		return
	}

	if(document.forms['signupForm'].userEmail.value != 
	 document.forms['signupForm'].userEmailConfirmation.value){
		alert("Email addresses disagree, please check and confirm")
		document.forms['signupForm'].userEmail.focus()
		return
	}

	if (document.forms['signupForm'].userDisplayName.value == ""){
		alert("Please enter a preferred username")
		document.forms['signupForm'].userDisplayName.focus()
		return
	}

	if (document.forms['signupForm'].userPassCrypt.value == ""){
		alert("Please enter a password")
		document.forms['signupForm'].userPassCrypt.focus()
		return
	}

	if(document.forms['signupForm'].userPassCrypt.value != 
	 document.forms['signupForm'].userPassCryptConfirmation.value){
		alert("Passwords disagree, please re-enter")
		document.forms['signupForm'].userPassCrypt.value = ""
		document.forms['signupForm'].userPassCryptConfirmation.value = ""
		document.forms['signupForm'].userPassCrypt.focus()
		return
	}

	if (validateEmailAddress(document.forms['signupForm'].userEmail.value) == false){
		document.forms['signupForm'].userEmail.value = ""
		document.forms['signupForm'].userEmailConfirmation.value = ""
		document.forms['signupForm'].userEmail.focus()
		return
	}

	document.forms['signupForm'].submit();
}

/*****************************************************************************/
/* New user form email validation                                            */
/*****************************************************************************/
function validateEmailAddress(str) {

	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){
	   alert("Invalid E-mail Address...Please try again")
	   return false
	}

	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
	   alert("Invalid E-mail Address...Please try again")
	   return false
	}

	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
	    alert("Invalid E-mail Address...Please try again")
	    return false
	}

	 if (str.indexOf(at,(lat+1))!=-1){
	    alert("Invalid E-mail Address...Please try again")
	    return false
	 }

	 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
	    alert("Invalid E-mail Address...Please try again")
	    return false
	 }

	 if (str.indexOf(dot,(lat+2))==-1){
	    alert("Invalid E-mail Address...Please try again")
	    return false
	 }
		
	 if (str.indexOf(" ")!=-1){
	    alert("Invalid E-mail Address...Please try again")
	    return false
	 }

	 return true
}
