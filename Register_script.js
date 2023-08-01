
const form=document.getElementById('form');
const username=document.getElementById('username');
const email=document.getElementById('email');
const password=document.getElementById('password');
const password2=document.getElementById('password2');
const fname=document.getElementById('fname');
const lname=document.getElementById('lname');
const dob=document.getElementById('dob');
const Address=document.getElementById('Address');
const country=document.getElementById('country');
const state=document.getElementById('state');
const district=document.getElementById('district');
const pin=document.getElementById('pin');
const phone=document.getElementById('phone');
const file=document.getElementById('file');
const forgot=document.getElementById('forgot');

//Show input error message

function showError(input,message){
    const formControl=input.parentElement;
    formControl.className='form-control error';
    const small=formControl.querySelector('small');
    small.innerText=message;
}

function showSuccess(input){
    const formControl=input.parentElement;
    formControl.className='form-control success';
    
}

//Email

function isValidEmail(email)
{
    const re= /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

//pin

function isValidPin(pin) 
{
  const re=/^\d{6}(-\d{5})?$/;
    return re.test(pin);
}

//phone

function isValidPhone(phone) 
{
  const re=/^\d{10}(-\d{9})?$/;
    return re.test(phone);
}


form.addEventListener('submit',function(e){
    e.preventDefault();

    if(fname.value===''){
        showError(fname,'Fastname is required');
    }
    else{
        showSuccess(fname);
    }
    if(lname.value===''){
        showError(lname,'Lastname is required');
    }
    else{
        showSuccess(lname);
    }
    if(dob.value===''){
        showError(dob,'DOB is required');
    }
    else{
        showSuccess(dob);
    }
    if(username.value===''){
        showError(username,'Username is required');
    }
    else{
        showSuccess(username);
    }
    if(Address.value===''){
        showError(Address,'Address is required');
    }
    else{
        showSuccess(Address);
    }
    if(country.value==='-Select-'){
        showError(country,'Please select the country');
    }
    else{
        showSuccess(country);
    }
    if(state.value==='-Select-'){
        showError(state,'Please select the state');
    }
    else{
        showSuccess(state);
    }
    if(district.value==='-Select-'){
        showError(district,'Please select the district');
    }
    else{
        showSuccess(district);
    }
    if(pin.value===''){
        showError(pin,'Zip code is requred');
    }
    else if(!isValidPin(pin.value)){
        showError(pin,'Pin is not valid');
    }
    else{
        showSuccess(pin);
    }
    if(email.value===''){
        showError(email,'Email is required');
    }else if(!isValidEmail(email.value)){
        showError(email,'Email is not valid');
    }
    else{
        showSuccess(email);
    }
    if(phone.value===''){
        showError(phone,'phone is required');
    }else if(!isValidPhone(phone.value)){
        showError(phone,'Phone number must be containt 10 digit');
    }
    else{
        showSuccess(phone);
    }

    
	if(password2.value===''){
        showError(password2,'Confirm Password is required');
    }
    else{
        showSuccess(password2);
    }
   
    if(file.value===''){
        showError(file,'Upload id is required');
    }
    else{
        showSuccess(file);
    }
    if(forgot.value===''){
        showError(forgot,'Kindly fill it..');
    }
    else{
        showSuccess(forgot);
    }

    
});




