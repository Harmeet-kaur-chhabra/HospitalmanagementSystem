<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<styl#ft-form {
        font-family: inherit;
        font-size: 100%;
        line-height: 1.15
      }
    </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>Appointment</h1>
    <form style="color:blu" action="SEND ADDRESS" id="ft-form" method="POST" accept-charset="UTF-8">
        <fieldset>
          <legend>For person</legend>
          <label>
            Name
            <input type="text" name="name" required>
          </label>
          <div class="two-cols">
            <label>
              Email address
              <input type="email" name="email" required>
            </label>
            <label>
              Phone number
              <input type="tel" name="phone">
            </label>
          </div>
        </fieldset>
        <fieldset>
          <legend>Appointment request</legend>
          <div class="two-cols">
            <label>
              date
              <input type="date" name="Appointment request" required>
            </label>
            <div class="inline">
              <label>
                <input type="hidden" name="Morning desired" value="no">
                <input type="checkbox" name="Morning desired" value="yes">
                Morning
              </label>
              <label>
                <input type="hidden" name="Afternoon desired" value="no">
                <input type="checkbox" name="Afternoon desired" value="yes">
                Afternoon
              </label>
            </div>
          </div>
          <p>Confirmation requested by</p>
          <div class="inline">
            <label>
              <input type="radio" name="Confirmation requested by" value="email" checked>
              Email
            </label>
            <label>
              <input type="radio" name="Confirmation requested by" value="phone">
              Phone call
            </label>
          </div>
        </fieldset>
        <div class="btns">
          <input type="text" name="_gotcha" value="" style="display:none;">
          <input type="submit" value="Submit request">
        </div>
      </form>

</body>
</html>
