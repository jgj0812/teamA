<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원 관리</title>
    <link href="/myPT/css/styles.css" rel="stylesheet" />
    <link href="/myPT/css/index.css" rel="stylesheet"/>
    <link href="/myPT/css/widget.css" rel="stylesheet"/>
	<!-- 데이터 테이블 css -->
	<link
      href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
    <!-- /데이터 테이블 css -->
	
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
    ></script>

  </head>
  <body class="sb-nav-fixed">
    <!-- nav -->
    <jsp:include page="/includeFiles/nav.jsp"></jsp:include>
    <!-- nav -->

    <!-- QR 모달 -->
    <jsp:include page="/includeFiles/modalQR.jsp"></jsp:include>
    <!--//QR 모달-->

    <div id="layoutSidenav">
      <!-- sideNav -->
      <jsp:include page="/includeFiles/adminSideNav.jsp"></jsp:include>
      <!-- /sideNav -->
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid">
          	<div class="card mb-4">
              <div class="card-header font-weight-bold ">
              <div class="justify-content-between d-flex ">
              <div class="align-self-center">
              	<i class="fas fa-users-cog"></i>
              	회원 관리
              </div>
                <div class="btn btn-dark" onclick="location.href='moveUserRegister.do'">회원 등록</div>
              </div>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table
                    class="table table-bordered"
                    id="dataTable"
                    width="100%"
                    cellspacing="0"
                  >
                    <thead class="text-center">
                      <tr>
                        <th>회원번호</th>
                        <th>이름</th>
                        <th>성별</th>
                        <th>나이</th>
                        <th>전화번호</th>
                        <th>시작일</th>
                        <th>만료일</th>
                        <th>남은 횟수</th>
                        <th>담당 트레이너</th>
                        <th>수정 / 삭제</th>
                      </tr>
                    </thead>
                    <tbody class="text-center">
                      <c:forEach items="${userList }" var="item">
                      <tr>
                        <td>${item.id }</td>
                        <td>${item.name }</td>
                        <td>${item.gender }</td>
                        <td>${item.birth }</td>
                        <td>${item.tel }</td>
                        <td>${item.startdate }</td>
                        <td>${item.enddate }</td>
                        <td>${item.ptcount }</td>
                        <td>${item.tid}</td>
                        <td>
                          <button onclick="location.href='adminUserDetail.do?id=${item.id}'" class="btn btn-primary custom-btn">
                            <i class="fas fa-user-edit"></i>
                          </button>
                          <button onclick="deleteUser('${item.id}')" class="btn btn-danger custom-btn">
                            <i class="fas fa-user-times"></i>
                          </button>
                        </td>
                      </tr>
                      </c:forEach> 
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js">
    </script>
    <script src="/myPT/js/scripts.js"></script>
    
    <!-- 데이터 테이블 js -->
    <script src="/myPT/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script src="/myPT/assets/demo/datatables-demo.js"></script>
    <!-- /데이터 테이블 js -->
    
    <!-- 삭제 js -->
    <script src="/myPT/js/delete.js"></script>
  </body>
</html>
