<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="com.lilme.jdodb.ChildAccount" %>
<%@ page import="javax.jdo.PersistenceManager" %>
<%@ page import="com.lilme.jdodb.PMF" %>
<%@ page import="javax.jdo.Query" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin- View Children</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Lil'Me</b>Admin</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                </a>
                <ul class="dropdown-menu">
                 
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                </a>
                <ul class="dropdown-menu">
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                </a>
                <ul class="dropdown-menu">
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/avatar2.png" class="user-image" alt="User Image">
                  <span class="hidden-xs">Melanie Johnson</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/avatar2.png" class="img-circle" alt="User Image">
                    <p>
                      Melanie Johnson - Admin
                      <small></small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/avatar2.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Melanie Johnson</p>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li>
              <a href="admin.html">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span></i>
              </a>
            </li>
			<li>
				<a href="email.html">
				<i class="fa fa-envelope"></i> <span>Send Email</span></i>
				</a>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-group"></i> <span>Send Update</span>
					<i class="fa fa-angle-left pull-right"></i>
				</a>
				<ul class="treeview-menu">
					<li><a href="sendBook.jsp"><i class="fa fa-circle-o"></i>Send Book Email</a></li>
				</ul>
			</li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>Forms</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="addChild.jsp"><i class="fa fa-circle-o"></i>Add Child</a></li>
                <li><a href="addParent.jsp"><i class="fa fa-circle-o"></i>Add Parent</a></li>
				<li><a href="addBook.jsp"><i class="fa fa-circle-o"></i>Add Book</a></li>
			 </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Tables</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="lunchGroup.jsp"><i class="fa fa-circle-o"></i>View Lunch Groups</a></li>
				<li><a href="showParents.jsp"><i class="fa fa-circle-o"></i>View Parents</a></li>
				<li><a href="showBooks.jsp"><i class="fa fa-circle-o"></i>View Books</a></li>
			 </ul>
            </li>
            <li>
              <a href="calendar.html">
                <i class="fa fa-calendar"></i> <span>Calendar</span>
              </a>
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
			<li><a href="admin.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="lunchGroup.jsp">View Lunch Groups</a></li>
            <li class="active">View Child</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          
		  <%
			String firstName = null;
			String lastName = null;
			String middleInitial = null;
			String dateOfBirth = null;
			int lunchGroup = 0;
			String[] allergies = null;
			int groupNum = Integer.parseInt(request.getParameter("group"));
			
			List<ChildAccount> allChild = ChildAccount.getAllChild();
			
			if (allChild!=null) {%>
				<% switch(groupNum){
					case 1:
						%><center><h2>Lunch Group 1</h2></center><%	
						break;
					case 2:
						%><center><h2>Lunch Group 2</h2></center><%
						break;
					case 3:
						%><center><h2>Lunch Group 3</h2></center><%
						break;
					case 4:
						%><center><h2>All Children</h2></center><%
						break;
				}%>
			<div class="box">
                <div class="box-header">
                  <h3 class="box-title">Lunch Groups</h3>
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
                  <table class="table table-striped">
                    <tr>
                      <th>Last Name</th>
                      <th>First Name</th>
					  <th>Middle Initial</th>
                      <th>Date of Birth</th>
					  <th>Allergies</th>
					  <th>Lunch Group</th>
                    </tr>
					<%	for(int i = 0; i < allChild.size(); i++){
					if (allChild.get(i).getLunchGroup() == groupNum){
						firstName = allChild.get(i).getFirstName();
						lastName = allChild.get(i).getLastName();
						middleInitial = allChild.get(i).getMiddleInitial();
						dateOfBirth = allChild.get(i).getDOB();
						lunchGroup = allChild.get(i).getLunchGroup();
						allergies = allChild.get(i).getAllergies();%>
						<tr>
							<td><%=lastName %></td>
							<td><%=firstName %></td>
							<td><%=middleInitial %></td>
							<td><%=dateOfBirth %></td>
							<td>
					<%	for(int x=0; x < allergies.length; x++ ){
							if(x==allergies.length-1){%>
							<%=	allergies[x]%>
						<%	}else{ %>
							<%=	allergies[x] + ", " %>
						<% 	}
						}%>
						</td>
						<td>Lunch Group <%=lunchGroup %></td>
						</tr><%
					} else if (groupNum == 4){
						firstName = allChild.get(i).getFirstName();
						lastName = allChild.get(i).getLastName();
						middleInitial = allChild.get(i).getMiddleInitial();
						dateOfBirth = allChild.get(i).getDOB();
						lunchGroup = allChild.get(i).getLunchGroup();
						allergies = allChild.get(i).getAllergies();%>
						<tr>
						<td><%=lastName %></td>
						<td><%=firstName %></td>
						<td><%=middleInitial %></td>
						<td><%=dateOfBirth %></td>
						<td>
						<%	for(int x=0; x < allergies.length; x++ ){
								if(x==allergies.length-1){%>
								<%=	allergies[x]%>
							<%	}else{ %>
								<%=	allergies[x] + ", " %>
							<% 	}
							}%>
						</td>
						<td>Lunch Group <%=lunchGroup %></td>
						</tr>
				<%}}}%>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
		  
		  
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.3.0
        </div>
        <strong>Copyright &copy; 2015 Lil Me.</strong> All rights reserved.
      </footer>

      

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
