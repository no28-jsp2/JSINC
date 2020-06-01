<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>JS.Inc</title>
</head>

<body>
   <section id="container">
      <jsp:include page="default/header.jsp"/>
      <jsp:include page="default/sidebar.jsp"/>
      <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
         <section class="wrapper site-min-height">
            <div class="row mt">
               <div class="col-lg-12">
                  <div class="row content-panel">
                     <div class="col-md-4 profile-text mt mb centered">
                        <div class="right-divider hidden-sm hidden-xs">
                           <h4>${user.empNo }</h4>
                           <h6>Employee Number</h6>
                           <h4>${workDays }(일)</h4>
                           <h6>Working days this month : ${loginMonth }</h6>
                           <h4>${workTimes }(h)</h4>
                           <h6>Working hours this month : ${loginMonth }</h6>
                        </div>
                     </div>
                     <!-- /col-md-4 -->
                     <div class="col-lg-4 col-md-4 col-sm-4 mb">
                        <div class="content-panel pn">
                           <div id="profile-02">
                              <div class="user">
                                 <img src="${pageContext.request.contextPath }/resources/img/${user.img}" class="img-circle"
                                    width="80">
                                 <h4>${user.name }</h4>
                              </div>
                           </div>
                           <div class="pr2-social centered">
                              <a href="#"><i class="fa fa-twitter"></i></a>
                                   <a href="#"><i class="fa fa-facebook"></i></a>
                                   <a href="#"><i class="fa fa-dribbble"></i></a>
                           </div>
                        </div>
                        <!-- /panel -->
                     </div>
                  </div>
                  <!-- /row -->
               </div>
               <!-- /col-lg-12 -->
               <div class="col-lg-12 mt">
                  <div class="row content-panel">
                     <div class="panel-heading">
                        <ul class="nav nav-tabs nav-justified">
                           <li><a data-toggle="tab" href="#edit">Edit Profile</a></li>
                        </ul>
                     </div>
                     <!-- /panel-heading -->
                     <div class="panel-body">
                        <div class="tab-content">
                           <div id="edit" class="tab-pane">
                              <div class="row">
                                 <div class="col-lg-8 col-lg-offset-2 detailed">
                                    <h4 class="mb">Company Information</h4>
                                    <form role="form" class="form-horizontal">
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">회사</label>
                                          <label class="col-lg-2 control-label">JS.Inc</label>
                                       </div>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">직급</label>
                                          <label class="col-lg-2 control-label">${user.dep }</label>
                                       </div>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">부서</label>
                                          <label class="col-lg-2 control-label">${user.rank }</label>
                                       </div>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">사번</label>
                                          <label class="col-lg-2 control-label">${user.empNo }</label>
                                       </div>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">이메일</label>
                                          <label class="col-lg-2 control-label">${user.userEmail }</label>
                                       </div>
                                    </form>
                                 </div>
                                 <div class="col-lg-8 col-lg-offset-2 detailed mt">
                                    <h4 class="mb">Personal Information</h4>
                                    <form role="form" class="form-horizontal" action="editProfile">
                                       <!-- 프로필 사진 변경 div 
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label"> 프로필 사진</label>
                                          <div class="col-lg-6">
                                             <input type="file" id="exampleInputFile" class="file-pos" name="img">
                                          </div>
                                       </div>
                                       -->
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">이름</label>
                                          <div class="col-lg-6">
                                             <input type="text" placeholder="이름" id="name" class="form-control" value="${user.name }" name="name">
                                          </div>
                                       </div>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">생년월일</label>
                                          <div class="col-lg-6">
                                             <input type="text" placeholder="생년월일" id="birth" class="form-control" value="${user.birth }" name="birth">
                                          </div>
                                       </div>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">전화번호</label>
                                          <div class="col-lg-6">
                                             <input type="text" placeholder="생년월일 예)910525" id="phone" class="form-control" value="${user.phoneNumber }" name="phoneNumber">
                                          </div>
                                       </div>
                                       <div class="form-group">
                                          <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                                          <div class="col-lg-10">
                                             <label class="radio-inline"> 
                                                <input type="radio" id="emailReceiveYn" name="mailChk" value="Y" checked> 동의합니다.
                                             </label> 
                                             <label class="radio-inline"> 
                                                <input type="radio" id="emailReceiveYn" name="mailChk" value="N"> 동의하지 않습니다.
                                             </label>
                                          </div>
                                       </div>
                                       <div class="form-group">
                                          <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                                          <div class="col-lg-10">
                                             <label class="radio-inline">
                                             <input type="radio" id="smsReceiveYn" name="smsChk" value="Y" checked>동의합니다.
                                             </label> 
                                             <label class="radio-inline"> 
                                             <input type="radio" id="smsReceiveYn" name="smsChk" value="N"> 동의하지 않습니다.
                                             </label>
                                          </div>
                                       </div>
                                       <div class="form-group">
                                          <label for="inputPhoneNumber" class="col-lg-2 control-label">비밀번호</label>
                                          <button type="button" class="btn btn-round btn-default" style="margin-left: 10px;">비밀번호 변경</button>
                                       </div>
                                       <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                             <button class="btn btn-theme" type="submit">Save</button>
                                             <button class="btn btn-theme04" type="button" onclick="location.href='profile'">Cancel</button>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                                 <!-- /col-lg-8 -->
                              </div>
                              <!-- /row -->
                           </div>
                           <!-- /tab-pane -->
                        </div>
                        <!-- /tab-content -->
                     </div>
                     <!-- /panel-body -->
                  </div>
                  <!-- /col-lg-12 -->
               </div>
               <!-- /row -->
            </div>
            <!-- /container -->
         </section>
         <!-- /wrapper -->
      </section>
      <!-- /MAIN CONTENT -->
      <!--main content end-->
      <jsp:include page="default/footer.jsp"/>
   </section>
   <!-- js placed at the end of the document so the pages load faster -->
   <script src="resources/lib/jquery/jquery.min.js"></script>
   <script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
   <script class="include" type="text/javascript"
      src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
   <script src="resources/lib/jquery.scrollTo.min.js"></script>
   <script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
   <!--common script for all pages-->
   <script src="resources/lib/common-scripts.js"></script>
   <!--script for this page-->
   <!-- MAP SCRIPT - ALL CONFIGURATION IS PLACED HERE - VIEW OUR DOCUMENTATION FOR FURTHER INFORMATION -->
   <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&sensor=false"></script>
   <script>
    $('.contact-map').click(function() {

      //google map in tab click initialize
      function initialize() {
        var myLatlng = new google.maps.LatLng(40.6700, -73.9400);
        var mapOptions = {
          zoom: 11,
          scrollwheel: false,
          center: myLatlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(document.getElementById('map'), mapOptions);
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Dashio Admin Theme!'
        });
      }
      google.maps.event.addDomListener(window, 'click', initialize);
    });
  </script>
</body>

</html>