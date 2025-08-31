// moved to application.html.erb
//$(window).on('load', function() {
//	darkSwitchInit();
//});

function darkSwitchChangeMode() {

	var darkThemeSelected =
	  (localStorage.getItem("darkSwitch") !== null) &&
	  (localStorage.getItem("darkSwitch") === "dark");

	
	var html = document.querySelector('html');

	if (darkThemeSelected == true) {
	  document.body.removeAttribute("data-theme");
	  document.documentElement.classList.remove('dark'); // add for JQuery Datatable
	  localStorage.removeItem("darkSwitch");    
	} else {
	  document.body.setAttribute("data-theme", "dark");
		document.documentElement.classList.add('dark'); // add for JQuery Datatable
	  localStorage.setItem("darkSwitch", "dark");   
	}

};


function darkSwitchInit() {
  var darkThemeSelected =
    localStorage.getItem("darkSwitch") !== null &&
    localStorage.getItem("darkSwitch") === "dark";
  
  if (darkThemeSelected) {
  	document.body.setAttribute("data-theme", "dark");
    document.documentElement.classList.add('dark'); // add for JQuery Datatable
  } else {
  	document.body.removeAttribute("data-theme");
    document.documentElement.classList.remove('dark'); // add for JQuery Datatable
  }

}
