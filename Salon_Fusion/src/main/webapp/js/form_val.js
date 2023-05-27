
subName=1;
subCity=1;
subMobile=1;
subPrice=1;
subNumber=1;
subEmail=1;
subPin=1;
subAadhar=1;
subPan=1;
subUsername=1;
subPassword=1;
subCPassword=1;

subEmpty=1;

function validateEmpty(inputField,helpText,msg)
{
	if(inputField.value.length==0)
	{

			if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subEmpty=1;
					return false;
			}

	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subEmpty=0;
					return true;
			}
	}

}




function validateName(inputField,helpText,msg)
{
	subEmpty=0;
	nme=inputField.value;
	regExp=/^[a-zA-Z]{1}[a-zA-Z. ]+$/;
	
	
	if(!regExp.test(nme))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subName=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subName=0;
					return true;
			}
	
	}

}


function validateCity(inputField,helpText,msg)
{
	subEmpty=0;
	nme=inputField.value;
	regExp=/^[a-zA-Z]{1}[a-zA-Z]+$/;
	
	
	if(!regExp.test(nme))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subCity=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subCity=0;
					return true;
			}
	
	}

}



function validateMobile(inputField,helpText,msg)
{ subEmpty=0;
	mobile=inputField.value;
	regExp=/^[7-9]{1}[0-9]{9}$/;
	
	if(!regExp.test(mobile))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subMobile=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subMobile=0;
					return true;
			}
	}
}

function validatePrice(inputField,helpText,msg)
{subEmpty=0;
	price=inputField.value;
	regExp=/^[1-9]{1}[0-9]+$/;
	
	if(!regExp.test(price))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subPrice=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subPrice=0;
					return true;
			}
	}
}


function validateNumber(inputField,helpText,msg)
{subEmpty=0;
	no=inputField.value;
	regExp=/^[0-9]+$/;
	
	if(!regExp.test(no))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subNumber=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subNumber=0;
					return true;
			}
	}
}


function validateEmail(inputField,helpText,msg)
{subEmpty=0;
	email=inputField.value;
	regExp=/^[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*@[a-zA-Z0-9]+(\.[a-zA-Z]{2,3})+$/;
	
	if(!regExp.test(email))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subEmail=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subEmail=0;
					return true;
			}
	}
}

function validatePin(inputField,helpText,msg)
{subEmpty=0;
	pin=inputField.value;
	regExp=/^[0-9]{6}$/;
	
	if(!regExp.test(pin))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subPin=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subPin=0;
					return true;
			}
	}
}

function validateAadhar(inputField,helpText,msg)
{subEmpty=0;
	aadhar=inputField.value;
	regExp=/^[0-9]{12}$/;
	
	if(!regExp.test(aadhar))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subAadhar=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subAadhar=0;
					return true;
			}
	}
}
function validateDob(inputField,helpText,msg)
{
	dob=inputField.value;
	
	byear=dob.substr(0,4);
	//alert("Birth Year"+byear);


	d=new Date();
	//alert(d);
	date=d.getDate();
	month=d.getMonth();
	year=d.getYear()+1900;
	
	//alert(date+" "+month+" "+year);

	age=year-byear;
	



	
	if(age<18)
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					return true;
			}
	}
}
function validatePAN(inputField,helpText,msg)
{
	pan=inputField.value;
	regExp=/^[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}$/;
	
	
	if(!regExp.test(pan))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subPan=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subPan=0;
					return true;
			}
	
	}
}

function validateUsername(inputField,helpText,msg)
{subEmpty=0;
	username=inputField.value;
	regExp=/^[a-z]{1}[a-z0-9_]{5,15}$/;
	
	
	if(!regExp.test(username))
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subUsername=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="";
					subUsername=0;
					return true;
			}
	
	}
}

function validatePassword(inputField,helpText,msg1,msg2)
{
	subEmpty=0;
	password=inputField.value;

	regExp1=/[!@#$%^&*]+/;
	regExp2=/[a-zA-Z]+/;
	regExp3=/[0-9]+/;

	//alert(password);
	/*alert(regExp1.test(password));
	alert(regExp2.test(password));
	alert(regExp3.test(password));
*/
	if(regExp1.test(password) && regExp2.test(password) && regExp3.test(password))
	{
		if(password.length<10)
		{
			
			if(helpText!=null)
			{
				helpText.innerHTML="<span class=text-success>"+msg1+"</span>";
				subPassword=0;
				return true;
			}
		}
		else
		{

			if(helpText!=null)
			{
				helpText.innerHTML="<span class=text-success>"+msg2+"</span>"
				subPassword=0;
				return true;
			}
		

		}
	}
	else 
	{
		if(helpText!=null)
			{
					helpText.innerHTML='Your password should have atleast one number, one special symbol and must be 10 to 20 character long';
				    subPassword=1;
					return false;
			}
	
	}
}
function validateConfirmPassword(inputField,helpText,msg)
{
	
	confirmpassword=inputField.value;
	//alert(confirmpassword);
	password=document.getElementById("txtPassword").value;
	//alert(password)
	if(password!=confirmpassword)
	{
		if(helpText!=null)
			{
					helpText.innerHTML=msg;
					subCPassword=1;
					return false;
			}
	}
	else
	{
		if(helpText!=null)
			{
					helpText.innerHTML="<span class=text-success>Match</span>";
					subCPassword=0;
					return true;
			}
	}
}


function registerFinal()
{
	
	if(subEmpty==0 && subName==0 && subEmail==0 && subUsername==0 && subCPassword==0 && subMobile==0)
	{
		
		document.getElementById("frmRegister").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}

function passwordUpdate()
{
	
	if(subCPassword==0 && subPassword==0)
	{
		
		document.getElementById("frmPassword").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}
