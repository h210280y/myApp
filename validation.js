// show a message with a type of the input
function showMessage(input, message, type) {
	// get the small element and set the message
	const msg = input.parentNode.querySelector("small");
	msg.innerText = message;
	// update the class for the input
	input.className = type ? "success" : "error";
	return type;
}

function showError(input, message) {
	//return showMessage(input, message, false);
    alert(message);
}

function showSuccess(input) {
	return showMessage(input, "", true);
}

function hasValue(input, message) {
	if (input.value.trim() === "") {
		input.style.backgroundColor = 'red';
		return showError(input, message);
	}
	return showSuccess(input);
}

function validateNumber(input, message, message2) {
	if (input.value.trim() === "") {
		input.style.backgroundColor = 'red';
		return showError(input, message);
	}

    if (isNaN(input.value)) {
		input.style.backgroundColor = 'red';
		return showError(input, message2);
	}

	

	return showSuccess(input);
}

function validateEmail(input, requiredMsg, invalidMsg) {
	// check if the value is not empty
	if (!hasValue(input, requiredMsg)) {
		input.style.backgroundColor = 'red';
		return false;
	}
	// validate email format
	const emailRegex =
		/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

	const email = input.value.trim();
	if (!emailRegex.test(email)) {
		input.style.backgroundColor = 'red';
		return showError(input, invalidMsg);
	}

	return true;
}

const form = document.querySelector("#enquiries");

const NAME_REQUIRED = "Please enter your name";
const EMAIL_REQUIRED = "Please enter your email";
const EMAIL_INVALID = "Please enter a correct email address format";
const NUMBER_REQUIRED = "Please enter your number";
const NUMBER_INVALID = "Please enter a correct number";
const ENQUIRY_REQUIRED = "Please enter the enquiry";


form.addEventListener("submit", function (event) {
	// stop form submission
	event.preventDefault();

	// validate the form
	let nameValid = hasValue(form.elements["myName"], NAME_REQUIRED);
	let emailValid = validateEmail(form.elements["myEmail"], EMAIL_REQUIRED, EMAIL_INVALID);
    let numberValid = validateNumber(form.elements["myNumber"], NUMBER_REQUIRED, NUMBER_INVALID);
    let enquiryValid = hasValue(form.elements["myEnquiry"], ENQUIRY_REQUIRED);

	// if valid, submit the form.
	if (nameValid && emailValid && numberValid && enquiryValid) {
		alert("Sent! Expect to hear from us soon.");

        // clearing the form to enter new content
		form.reset();

		form.elements["myName"].style.backgroundColor = '#f1f1f1';
        form.elements["myEmail"].style.backgroundColor = '#f1f1f1';
        form.elements["myNumber"].style.backgroundColor = '#f1f1f1';
        form.elements["myEnquiry"].style.backgroundColor = '#f1f1f1';
		
	}

});



