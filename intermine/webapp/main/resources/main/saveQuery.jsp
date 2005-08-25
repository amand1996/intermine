<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<!-- saveQuery.jsp -->
<html:xhtml/>
<c:if test="${!empty QUERY}">
  <c:if test="${!empty PROFILE.username}">
    <html:form action="/saveQuery">
      <html:text property="queryName"/>
      <html:submit property="action">
        <fmt:message key="query.save"/>
      </html:submit>
    </html:form>
  </c:if>
  <div class="exportQueryLink">
    <html:link action="/exportQuery">
      <fmt:message key="query.export"/>
    </html:link>
  </div>
</c:if>
<!-- /saveQuery.jsp -->
