function validate() {
    var userFname = document.getElementById("txtUserFirstName").value;
    var fname = /^[a-zA-Z]*$/;
    var userLname = document.getElementById("txtUserLastName").value;
    var lname = /^[a-zA-Z]*$/;
    var userEmail = document.getElementById("txtUserEmail").value;
    var email_Pattern = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    var gender = document.getElementById("ddlGender").value;
    var userContact = document.getElementById("txtUserContactNumber").value;
    var valusercontact=/^[0-9]*$/;
    var userUserid = document.getElementById("txtUserId").value;
    var valuserid = /^[A-Za-z0-9]*$/;
    var userPwd = document.getElementById("txtUserPassword").value;
    var userCpwd = document.getElementById("txtUserCPassword").value;
    

    //if (userFname == '' && userLname == '' && userEmail == '' && userContact == '' && userUserid == '' && userPwd == '') {
    //    document.getElementById("txtUserFirstName").focus();
    //    alert("Enter all the highlighted fields!");
    //    return false;
    //}

    if (userFname == '' || userFname == null) {
        document.getElementById("txtUserFirstName").focus();
        alert("Enter your first name!");
        return false;
    }
    else if(fname.test(userFname)==false)
    {
        document.getElementById("txtUserFirstName").focus();
        alert("Enter only alphabets for first name!");
        return false;
    }
  
    else if (userLname == '' || userLname == null) {
        document.getElementById("txtUserLastName").focus();
        alert("Enter your last name!");
        return false;
    }
    else if (lname.test(userLname) == false) {
        document.getElementById("txtUserLastName").focus();
        alert("Enter only alphabets for last name!");
        return false;
    }
  
    else if (userEmail == '') {
        document.getElementById("txtUserEmail").focus();
        alert("Enter your email!");
        return false;
    }
    else if (email_Pattern.test(userEmail) == false) {
        document.getElementById("txtUserEmail").focus();
        alert("Enter valid email!");
        return false;
    }
    else if (gender == '') {
        document.getElementById("ddlGender").focus();
        alert("Enter your gender!");
        return false;
    }

    else if (userContact == '') {
        document.getElementById("txtUserContactNumber").focus();
        alert("Enter your contact number!");
        return false;
    }
    else if (userContact.length != 10 || valusercontact.test(userContact)==false ) {
        document.getElementById("txtUserContactNumber").focus();
        alert("Enter valid contact number!");
        return false;
    }

    else if (userUserid == '') {
        document.getElementById("txtUserId").focus();
        alert("Enter your User ID!");
        return false;
    }

    else if (valuserid.test(userUserid)==false) {
        document.getElementById("txtUserId").focus();
        alert("Enter only characters and numbers");
        return false;
    }

    else if (userPwd == '') {
        document.getElementById("txtUserPassword").focus();
        alert("Enter your password!");
        return false;
    }

    else if (userCpwd == '') {
        document.getElementById("txtUserCPassword").focus();
        alert("Confirm your password!");
        return false;
    }

    else if (userPwd != userCpwd) {
        document.getElementById("txtUserCPassword").focus();
        alert("Passwords don't match!");
        return false;
    }
}
