<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
  <title>Dashboard &mdash; Stisla</title>

  <link rel="stylesheet" href="/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/modules/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

  <link rel="stylesheet" href="/modules/summernote/summernote-lite.css">
  <link rel="stylesheet" href="/modules/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="/css/demo.css">
  <link rel="stylesheet" href="/css/style.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	  //$("#btn").click(function(){	
    //});
});    
</script>
</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
          </ul>
          <div class="search-element">
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">
            <button class="btn" type="submit"><i class="ion ion-search"></i></button>
          </div>
        </form>
        <ul class="navbar-nav navbar-right">
          <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="ion ion-ios-bell-outline"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">Notifications
                <div class="float-right">
                  <a href="#">View All</a>
                </div>
              </div>
              <div class="dropdown-list-content">
                <a href="#" class="dropdown-item dropdown-item-unread">
                  <img alt="image" src="/img/avatar/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
                    <div class="time">10 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item dropdown-item-unread">
                  <img alt="image" src="/img/avatar/avatar-2.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Ujang Maman</b> has moved task <b>Fix bug footer</b> to <b>Progress</b>
                    <div class="time">12 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item">
                  <img alt="image" src="/img/avatar/avatar-3.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Agung Ardiansyah</b> has moved task <b>Fix bug sidebar</b> to <b>Done</b>
                    <div class="time">12 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item">
                  <img alt="image" src="/img/avatar/avatar-4.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Ardian Rahardiansyah</b> has moved task <b>Fix bug navbar</b> to <b>Done</b>
                    <div class="time">16 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item">
                  <img alt="image" src="/img/avatar/avatar-5.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Alfa Zulkarnain</b> has moved task <b>Add logo</b> to <b>Done</b>
                    <div class="time">Yesterday</div>
                  </div>
                </a>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
            <i class="ion ion-android-person d-lg-none"></i>
            <div class="d-sm-none d-lg-inline-block">Hi, Ujang Maman</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              <a href="profile.jsp" class="dropdown-item has-icon">
                <i class="ion ion-android-person"></i> Profile
              </a>
              <a href="#" class="dropdown-item has-icon">
                <i class="ion ion-log-out"></i> Logout
              </a>
            </div>
          </li>
        </ul>
      </nav>
      <div class="main-sidebar">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="index.jsp">Stisla Lite</a>
          </div>
          <div class="sidebar-user">
            <div class="sidebar-user-picture">
              <img alt="image" src="/img/avatar/avatar-1.jpeg">
            </div>
            <div class="sidebar-user-details">
              <div class="user-name">Ujang Maman</div>
              <div class="user-role">
                Administrator
              </div>
            </div>
          </div>
          <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li>
              <a href="index.jsp"><i class="ion ion-speedometer"></i><span>Dashboard</span></a>
            </li>

            <li class="menu-header">Components</li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-ios-albums-outline"></i><span>Components</span></a>
              <ul class="menu-dropdown">
                <li><a href="general.jsp"><i class="ion ion-ios-circle-outline"></i> Basic</a></li>
                <li><a href="components.jsp"><i class="ion ion-ios-circle-outline"></i> Main Components</a></li>
                <li><a href="buttons.jsp"><i class="ion ion-ios-circle-outline"></i> Buttons</a></li>
                <li><a href="toastr.jsp"><i class="ion ion-ios-circle-outline"></i> Toastr</a></li>
              </ul>
            </li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-flag"></i><span>Icons</span></a>
              <ul class="menu-dropdown">
                <li><a href="ion-icons.jsp"><i class="ion ion-ios-circle-outline"></i> Ion Icons</a></li>
                <li><a href="fontawesome.jsp"><i class="ion ion-ios-circle-outline"></i> Font Awesome</a></li>
                <li><a href="flag.jsp"><i class="ion ion-ios-circle-outline"></i> Flag</a></li>
              </ul>
            </li>
            <li class="active">
              <a href="table.jsp"><i class="ion ion-clipboard"></i><span>Tables</span></a>
            </li>
            <li>
              <a href="chartjs.jsp"><i class="ion ion-stats-bars"></i><span>Chart.js</span></a>
            </li>
            <li>
              <a href="simple.jsp"><i class="ion ion-ios-location-outline"></i><span>Google Maps</span></a>
            </li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-ios-copy-outline"></i><span>Examples</span></a>
              <ul class="menu-dropdown">
                <li><a href="login.jsp"><i class="ion ion-ios-circle-outline"></i> Login</a></li>
                <li><a href="register.jsp"><i class="ion ion-ios-circle-outline"></i> Register</a></li>
                <li><a href="forgot.jsp"><i class="ion ion-ios-circle-outline"></i> Forgot Password</a></li>
                <li><a href="reset.jsp"><i class="ion ion-ios-circle-outline"></i> Reset Password</a></li>
                <li><a href="404.jsp"><i class="ion ion-ios-circle-outline"></i> 404</a></li>
              </ul>
            </li>

            <li class="menu-header">More</li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-ios-nutrition"></i> Click Me</a>
              <ul class="menu-dropdown">
                <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Menu 1</a></li>
                <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Menu 2</a>
                  <ul class="menu-dropdown">
                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                    <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a>
                      <ul class="menu-dropdown">
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a></li>
                      </ul>
                    </li>
                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 4</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a href="#"><i class="ion ion-heart"></i> Badges <div class="badge badge-primary">10</div></a>
            </li>
            <li>
              <a href="credits.jsp"><i class="ion ion-ios-information-outline"></i> Credits</a>
            </li>          </ul>
          <div class="p-3 mt-4 mb-4">
            <a href="http://stisla.multinity.com/" class="btn btn-danger btn-shadow btn-round has-icon has-icon-nofloat btn-block">
              <i class="ion ion-help-buoy"></i> <div>Go PRO!</div>
            </a>
          </div>
        </aside>
      </div>
      <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            <div>Tables</div>
          </h1>
          <div class="section-body">
            <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Simple Table</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered">
                        <tr>
                          <th>#</th>
                          <th>Name</th>
                          <th>Created At</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td>Irwansyah Saputra</td>
                          <td>2017-01-09</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Hasan Basri</td>
                          <td>2017-01-09</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Kusnadi</td>
                          <td>2017-01-11</td>
                          <td><div class="badge badge-danger">Not Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>4</td>
                          <td>Rizal Fakhri</td>
                          <td>2017-01-11</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                  <div class="card-footer text-right">
                    <nav class="d-inline-block">
                      <ul class="pagination mb-0">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li class="page-item">
                          <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                        </li>
                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Full Width</h4>
                  </div>
                  <div class="card-body p-0">
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <tr>
                          <th>#</th>
                          <th>Name</th>
                          <th>Created At</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td>Irwansyah Saputra</td>
                          <td>2017-01-09</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Hasan Basri</td>
                          <td>2017-01-09</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Kusnadi</td>
                          <td>2017-01-11</td>
                          <td><div class="badge badge-danger">Not Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>4</td>
                          <td>Rizal Fakhri</td>
                          <td>2017-01-11</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                  <div class="card-footer text-right">
                    <nav class="d-inline-block">
                      <ul class="pagination mb-0">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li class="page-item">
                          <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                        </li>
                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-5">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <div class="float-right">
                      <form>
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Search">
                          <div class="input-group-btn">
                            <button class="btn btn-secondary"><i class="ion ion-search"></i></button>
                          </div>
                        </div>
                      </form>
                    </div>
                    <h4>Advanced Table</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <tr>
                          <th class="text-center">
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                              <label for="checkbox-all" class="custom-control-label"></label>
                            </div>
                          </th>
                          <th>Task Name</th>
                          <th>Progress</th>
                          <th>Members</th>
                          <th>Due Date</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                        <tr>
                          <td width="40">
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                              <label for="checkbox-1" class="custom-control-label"></label>
                            </div>
                          </td>
                          <td>Create a mobile app</td>
                          <td class="align-middle">
                            <div class="progress" style="height: 4px;" data-toggle="tooltip" title="100%">
                              <div class="progress-bar bg-success" style="width: 100%;"></div>
                            </div>
                          </td>
                          <td>
                            <img alt="image" src="/img/avatar/avatar-5.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian">
                          </td>
                          <td>2018-01-20</td>
                          <td><div class="badge badge-success">Completed</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-2">
                              <label for="checkbox-2" class="custom-control-label"></label>
                            </div>
                          </td>
                          <td>Redesign homepage</td>
                          <td class="align-middle">
                            <div class="progress" style="height: 4px;" data-toggle="tooltip" title="0%">
                              <div class="progress-bar" style="width: 0;"></div>
                            </div>
                          </td>
                          <td>
                            <img alt="image" src="/img/avatar/avatar-1.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Nur Alpiana">
                            <img alt="image" src="/img/avatar/avatar-3.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Hariono Yusup">
                            <img alt="image" src="/img/avatar/avatar-4.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Bagus Dwi Cahya">
                          </td>
                          <td>2018-04-10</td>
                          <td><div class="badge badge-info">Todo</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-3">
                              <label for="checkbox-3" class="custom-control-label"></label>
                            </div>
                          </td>
                          <td>Backup database</td>
                          <td class="align-middle">
                            <div class="progress" style="height: 4px;" data-toggle="tooltip" title="70%">
                              <div class="progress-bar bg-warning" style="width: 70%;"></div>
                            </div>
                          </td>
                          <td>
                            <img alt="image" src="/img/avatar/avatar-1.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Rizal Fakhri">
                            <img alt="image" src="/img/avatar/avatar-2.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Hasan Basri">
                          </td>
                          <td>2018-01-29</td>
                          <td><div class="badge badge-warning">In Progress</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-4">
                              <label for="checkbox-4" class="custom-control-label"></label>
                            </div>
                          </td>
                          <td>Input data</td>
                          <td class="align-middle">
                            <div class="progress" style="height: 4px;" data-toggle="tooltip" title="100%">
                              <div class="progress-bar bg-success" style="width: 100%;"></div>
                            </div>
                          </td>
                          <td>
                            <img alt="image" src="/img/avatar/avatar-2.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Rizal Fakhri">
                            <img alt="image" src="/img/avatar/avatar-5.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Isnap Kiswandi">
                            <img alt="image" src="/img/avatar/avatar-4.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Yudi Nawawi">
                            <img alt="image" src="/img/avatar/avatar-1.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Khaerul Anwar">
                          </td>
                          <td>2018-01-16</td>
                          <td><div class="badge badge-success">Completed</div></td>
                          <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left">
          Copyright &copy; 2018 <div class="bullet"></div> Design By <a href="https://multinity.com/">Multinity</a>
        </div>
        <div class="footer-right"></div>
      </footer>
    </div>
  </div>

  <script src="/modules/jquery.min.js"></script>
  <script src="/modules/popper.js"></script>
  <script src="/modules/tooltip.js"></script>
  <script src="/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
  <script src="/js/sa-functions.js"></script>
  
  <script src="/js/scripts.js"></script>
  <script src="/js/custom.js"></script>
  <script src="/js/demo.js"></script>
</body>
</html>