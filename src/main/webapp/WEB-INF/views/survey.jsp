<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="css/form.css" rel="stylesheet">
	  <title>CS Survey Page</title>
   </head>
   <body style="background-color:#888810">
      <div class= "divH1">
         <h1 style="color:green" align = "center">George Mason University Survey Form</h1>
      </div>
      <br/>
		<form method="POST" action="/studentForm/saveForm" class="w3-container w3-card-4" autocomplete="on" style="max-width:1000px;margin: auto" id="form">
        <label for="name" class="w3-text-green" >Name:</label> <input class="w3-input w3-border" type="text"  name="name" id="name" placeholder="required"
            autocomplete="on"  autofocus>
         <br/>
         <label for="address" class="w3-text-yellow">Street Address:</label>  <input class="w3-input w3-border" type="text" name="address" id="address"
            autocomplete="on" placeholder="required" >
         <br/>
          <label for="zip" class="w3-text-green">Zip:</label>  <input class="w3-input w3-border"  type="number" name="zip" id="zip" placeholder="required" 
            autocomplete="on" >
         <br/>
         <label for="city" class="w3-text-green">City:</label>  <input class="w3-input w3-border" type="text" name="city" id="city"
         autocomplete="on" placeholder="required" >
         <br/>
		 <br/>
		 <label for="state" class="w3-text-yellow">State: </label>  <input class="w3-input w3-border" type="text" name="state" id="state"
                  autocomplete="on" placeholder="required" >
         <br/>
		 <br/>
         <label for="telephone" class="w3-text-yellow">Telephone Number:</label> <input class="w3-input w3-border"  type="text"  id="telephone"
         name="telephone"  pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="required" autocomplete="on"  >
         <small>Format: 123-456-7890</small>
         <br/>
         <label for="email" class="w3-text-green">Email:</label>  <input  class="w3-input w3-border" type="email"  id="email" placeholder="username@domain.com" name="email" autocomplete="on"  >
         <br/>
         <label for="url" class="w3-text-yellow">URL:</label>  <input class="w3-input w3-border"  type="text" placeholder="scheme://host:port/path" name="url"
            autocomplete="on" >
         <br/>
          Date of Survey:<input type="date" id="dos" name= "dos" class="w3-text-green">
         <br/>
         <br/>
		 
		 <p style="color:yellow">Things liked by Students</p>
         <input class="w3-check" type="checkbox" id="check" name="check" value="Students" style="color:yellow"> Students
         <input class="w3-check" type="checkbox" id="check" name="check" value="Location" style="color:green"> Location
         <input class="w3-check" type="checkbox" id="check" name="check" value="Atmosphere" style="color:yellow"> Atmosphere
         <input class="w3-check" type="checkbox" id="check" name="check" value="Dorm" style="color:green"> Dorm
         <input class="w3-check" type="checkbox" id="check" name="check" value="Sports" style="color:yellow"> Sports

         
		 <p style="color:green">What makes interest in GMU:</p>
         <input class="w3-radio" type="radio"  name="interest" id="interest" value="friend" style="color:green"> Friend
         <input class="w3-radio" type="radio"  name="interest" id="interest" value="television" style="color:yellow"> Television
         <input class="w3-radio" type="radio"  name="interest" id="interest" value="internet" style="color:green"> Internet
         <input class="w3-radio" type="radio"  name="interest" id="interest" value="friend" style="color:yellow"> Others

         <p><label for="w3review" style="color:yellow">Additional Comments:</label></p>
         <textarea id="review" name="review" rows="4" cols="50" style="color:green">Provide your additional comments about school here.</textarea>
         </br></br>
         <label for="month" style="color:yellow">Choose month for the graduation:</label>
         <input list="month" name="month">
         <datalist id="month">
            <option value="January">
            <option value="February">
            <option value="March">
            <option value="April">
            <option value="May">
            <option value="June">
            <option value="July">
            <option value="August">
            <option value="September">
            <option value="October">
            <option value="November">
            <option value="December">
         </datalist>
         <label for="year" style="color:yellow">Year:</label> <input type="text"  name="year">
         </br></br>
         <label for="recommendation" style="color:green">How much do you recommend GMU:</label>
         <input list="recommendation" name="recommendation">
         <datalist id="recommendation">
         <option value="Very Likely">
         <option value="Likely">
         <option value="Unlikely">
         </datalist>
         </br></br>
         <button type="submit" class="w3-btn w3-blue">Submit</button>
		 <input type="reset" class="w3-btn w3-red" value="Reset">
      </form>
   </body>
</html>