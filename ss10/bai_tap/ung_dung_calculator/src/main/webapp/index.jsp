<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="" method="post">
  <fieldset >
    <legend>Calculator</legend>
    <label>First operand: <input type="text" name="operand" value="0"></label><br><br>
    <label>Operator:
      <select>
        <option value="+">Addition</option>
        <option value="-">Subtraction</option>
        <option value="*">Multiplication</option>
        <option value="/">Division</option>
      </select>
    </label><br><br>
    <label>Second operand: <input type="text" name="second-operand" value="0"></label><br><br>
    <input type="submit" value="Calculate">
  </fieldset>
</form>
</body>
</html>