<%@ page import='java.util.*' %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/sql' prefix='sql' %>

<%= "Hello" %>

<%
	ArrayList vals = new ArrayList();
	vals.add( 5 );
	vals.add( 17 );
	vals.add( 13 );

	out.println( String.format( "size() = %d<br />", vals.size()) );

	// make object accessible to JSTL
	pageContext.setAttribute("collectionSize", vals.size());
%>

<c:forEach var='v' items='${vals}'>
	<c:out value='${v}' /><br />
</c:forEach>

<c:set var="v1" value="25" />
<c:out value="${v1}" default='No value' />

<c:out value="${collectionSize}" default='Failed to get collection size.' />

<c:out value="<br />Goodbye via JSTL's c:out" />
