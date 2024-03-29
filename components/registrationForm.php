<?php

require_once "../utility/utility.php";
require_once "../utility/checkerAccess.php";
require_once "../utility/checkerHttps.php";

echo json_encode(array('err' => 0, 'msg' => "
    <!--Register Form-->
    <span class='formName'>Registration Form</span>
    <form name='register-form' id='register-form' method='post' autocomplete='on'>
      	<div>
        	<label for='email' >Email</label><br/>
            <input type='email' title='Insert an email address' name='email' id='email' pattern='^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$' placeholder='esempio@prova.com' required><br/>
        </div>
        <div>
            <label for='password'>Password</label><br/>
            <input type='password' title='The password must contain 1 lowcase character and 1 uppercase or a number' name='password' id='password' placeholder='**' pattern='^(?=.*[a-z])(?=.*[A-Z0-9]).*$' required autocomplete='off'><br/>
        </div>
        <div>
            <label for='confirm-password'>Confirm</label><br/>
            <input type='password' title='Reinsert the password' name='confirm-password' id='confirm-password' placeholder='**' pattern='^(?=.*[a-z])(?=.*[A-Z0-9]).*$' required autocomplete='off'><br/>
        </div>
        <input type='button' value='Register' id='submit' />
    </form>", ));
