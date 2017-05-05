<%@ page import="conk.Task" %>
<%@ page import="conk.Owner" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Home Page</title>
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
   </section>

   <section class="row colset-2-its">
        <br><p>We manage ${ownerTotal} people's to-do lists and there are ${taskTotal} tasks in the database.</p>
        <g:link controller="task" action="index" class="link-header">Tasks</g:link>
        <ul>
          <g:each in="${Task.list()}" var="thisTask">
            <li class="emo">
              <g:link controller="task" action="show" id="${thisTask.id}">
                  ${thisTask.owner.name} - ${thisTask.name}
              </g:link>
            </li>
          </g:each>
        </ul>

        <g:link controller="owner" action="index" class="link-header">Owners</g:link>
        <ul>
          <g:each in="${Owner.list()}" var="thisOwner">
            <li class="emo">
              <g:link controller="owner" action="show" id="${thisOwner.id}">
                ${thisOwner.name}
              </g:link>
            </li>
          </g:each>
        </ul>

  </section>
</div>

</body>
</html>
