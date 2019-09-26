function validate() {
    document.write("Hello");
    var userFname = document.getElementById("txtUserFirstName").value;
    //var userLname = document.getElementById("txtUserLastName").value;
    //var userEmail = document.getElementById("txtUserEmail").value;
    //var gender = document.getElementById("ddlGender").value;
    //var userContact = document.getElementById("txtUserContactNumber").value.length;
    //var userUserid = document.getElementById("txtUserId").value;
    //var userPwd = document.getElementById("txtUserPassword").value;
    //var userCpwd = document.getElementById("txtUserCPassword").value;

    if (userFname == '' || userFname == null) {
        document.getElementById("txtUserFirstName").focus();
        alert("Enter your first name");
        return false;
    }

    //else if (userLname == '' || userLname == null) {
    //    document.getElementById("txtUserLastName").focus();
    //    alert("Enter your last name");
    //    return false;
    //}

    //else if (userEmail == '') {
    //    document.getElementById("txtUserEmail").focus();
    //    alert("Enter your email");
    //    return false;
    //}

    //else if (userContact == 0) {
    //    document.getElementById("txtUserContactNumber").focus();
    //    alert("Enter your contact number");
    //    return false;
    //}

    //else if (userUserid == '') {
    //    document.getElementById("txtUserId").focus();
    //    alert("Enter your User ID");
    //    return false;
    //}

    //else if (userPwd == '') {
    //    document.getElementById("txtUserPassword").focus();
    //    alert("Enter your password");
    //    return false;
    //}

    //else if (userCpwd == '') {
    //    document.getElementById("txtUserCPassword").focus();
    //    alert("Confirm your password");
    //    return false;
    //}

    //else if (userPwd != userCpwd) {
    //    document.getElementById("txtUserCPassword").focus();
    //    alert("Passwords don't match!");
    //    return false;
    //}


    }
}
