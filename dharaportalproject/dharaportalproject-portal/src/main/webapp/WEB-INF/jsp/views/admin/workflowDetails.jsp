<%@ page language="java" trimDirectiveWhitespaces="true" %>
<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>
<fmt:setBundle basename="messages"/>

<fmt:message key="${pageTitleKey}" var="pagetitle"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type='text/javascript' src='/portal/static/scripts/jquery.blockUI.js'></script>
<style type="text/css" src='/portal/static/css/dhara.css'></style>
<rave:navbar pageTitle="${pagetitle}"/>
<script>


</script>
<div id="workflowdetails" class="container-fluid admin-ui">
    <div class="row-fluid">
        <div class="span2">
            <div class="tabs-respond">
                <rave:admin_tabsheader/>
            </div>
        </div>
        <div class="span10">
            <article>
                <a href="<spring:url value="/app/admin/workflows"/>"><fmt:message key="admin.workflow.goback"/></a></li>
                <h2><c:out value="${workflowId}"/></h2>

                <div>
                    <section>

                        <form class="form-horizontal" id="updateUserProfile" action="<c:url value="/app/admin/monitoring"/>"
                              method="get">
                            <form:errors cssClass="error" element="p"/>
                            <fieldset>
                                <legend><fmt:message key="admin.workflow.details"/></legend>
                                <br/>

                                <p>Description:${workflowDesc}</p>
                                <br/>
                                <c:forEach items="${inputNodes}" var="input" varStatus="outer">
                                    <div class="control-group">
                                        <label class="control-label">Input ${input.nodeName} (${input.existingMapping}) :</label>
                                        <div class="controls">
                                            <input type="text" name="${input.nodeName}/(${input.existingMapping})"> /><br>
                                        </div>
                                    </div>
                                </c:forEach>
                                <input type="hidden" name="workflowId" value="<c:out value="${workflowId}"/>"/>
                                <button type="submit"  class="btn btn-primary" id="execute" value="Execute">Execute</button>
                            </fieldset>
                        </form>
                    </section>
                </div>

            </article>
        </div>
    </div>
</div>