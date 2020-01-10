<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/test/root/events/registProc" method="post">
      	
        <div >
          EventName :<input id="eventName" name="eventName" type="text"/>
        </div>
        <div >
          EventIntro :<input id="eventIntro" name="eventIntro" type="text"/>
        </div>
        <div >
          ManagerAddress :<input id="managerAddress" name="managerAddress" type="text"/>
        </div>
        <div >
          ManagerPhone :<input id="managerPhone" name="managerPhone" type="text"/>
        </div>
        <div >
          StartDate :<input id="startDate" name="startDate" type="date"/>
        </div>
        <div >
          EndDate :<input id="endDate" name="endDate" type="date"/>
        </div>
        <input type="submit">
      </form>
</body>
</html>