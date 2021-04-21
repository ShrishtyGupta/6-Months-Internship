<%@page import="in.co.air.line.ticket.model.FlightModel"%>
<%@page import="in.co.air.line.ticket.util.DataUtility"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="in.co.air.line.ticket.bean.FlightBean"%>
<%@page import="in.co.air.line.ticket.controller.FlightListCtl"%>
<%@page import="in.co.air.line.ticket.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Report</title>

</head>
<body>
	<%@ include file="Header.jsp"%>
	<form action="<%=ATBView.FLIGHT_LIST_CTL%>" method="post">
		<div class="container">
			<div class="row">
				<center>
					<h3>Flight List</h3>
				</center>

				<hr>
				<div class="col-md-12">

					<div class="table-responsive">

						<table class="table table-bordred table-striped">
							<tr>
								<th>Flight Name</th>
								<td><input type="text" name="name"
									placeholder="Search By Name"
									value="<%=ServletUtility.getParameter("name", request)%>"
									class="input-md  textinput textInput form-control"></td>
								<th></th>
								<th>Flight No.</th>
								<td><input type="text" name="flightNo"
									placeholder="Search By Flight No"
									value="<%=ServletUtility.getParameter("flightNo", request)%>"
									class="input-md  textinput textInput form-control"></td>
								<td><input type="submit"
									class="btn btn-primary btn btn-info" name="operation"
									value="<%=FlightListCtl.OP_SEARCH%>"></td>
							</tr>
						</table>
						<center>
							<b><font color="red"><%=ServletUtility.getErrorMessage(request)%></font></b>
							<b><font color="green"><%=ServletUtility.getSuccessMessage(request)%></font></b>
						</center>
						<table id="mytable" class="table table-bordred table-striped">


							<thead>
								<tr>
									<th><input type="checkbox" id="selectall">Select
										All</th>
									<th>Flight No.</th>
									<th>Flight Name</th>
									<th>From City</th>
									<th>To City</th>
									<th>Date</th>
									<th>Time</th>
									<th>AirPort Name</th>
									<th>Ticket Price</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<%
									int pageNo = ServletUtility.getPageNo(request);
									int pageSize = ServletUtility.getPageSize(request);
									int index = ((pageNo - 1) * pageSize) + 1;
									FlightBean bean = null;
									List list = ServletUtility.getList(request);
									Iterator<FlightBean> it = list.iterator();

									while (it.hasNext()) {

										bean = it.next();
								%>
								<tr>
									<td><input type="checkbox" class="case" name="ids"
										value="<%=bean.getId()%>"></td>
									<td><%=bean.getFlightNo()%></td>
									<td><%=bean.getFightName()%></td>
									<td><%=bean.getFromCity()%></td>
									<td><%=bean.getToCity()%></td>
									<td><%=DataUtility.getDateString(bean.getDate())%></td>
									<td><%=bean.getTime()%></td>
									<td><%=bean.getAirPortName()%></td>
									<td><%=bean.getTicketPrice()%></td>
									<td><a href="FlightCtl?id=<%=bean.getId()%>"
										class="btn btn-primary btn btn-info">Edit</a></td>
								</tr>
								<%
									}
								%>
							</tbody>

						</table>

						<div class="clearfix"></div>
						<ul class="pagination pull-right">
							<li><input type="submit" name="operation"
								class="btn btn-primary btn btn-info"
								value="<%=FlightListCtl.OP_PREVIOUS%>"
								<%=(pageNo == 1) ? "disabled" : ""%>></li>
							<li><input type="submit" name="operation"
								class="btn btn-primary btn btn-info"
								value="<%=FlightListCtl.OP_NEW%>"></li>
							<li><input type="submit" name="operation"
								class="btn btn-primary btn btn-info"
								value="<%=FlightListCtl.OP_DELETE%>"
								<%=(list.size() == 0) ? "disabled" : ""%>></li>
							<%
								FlightModel model = new FlightModel();
							%>
							<li><input type="submit" name="operation"
								class="btn btn-primary btn btn-info"
								value="<%=FlightListCtl.OP_NEXT%>"
								<%=((list.size() < pageSize) || model.nextPK() - 1 == bean.getId()) ? "disabled" : ""%>></li>
						</ul>

					</div>

				</div>
			</div>
		</div>
		<input type="hidden" name="pageNo" value="<%=pageNo%>"> <input
			type="hidden" name="pageSize" value="<%=pageSize%>">
	</form>
<div style="margin-top: 168px">
	<%@ include file="Footer.jsp"%>
</div>	
</body>
</html>