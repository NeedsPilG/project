<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="card overflow-hidden z-1">
  <div class="card-body p-0">
    <div class="row g-0 h-100">
      <div class="col-md-5 text-center bg-card-gradient">
        <div class="position-relative p-4 pt-md-5 pb-md-7" data-bs-theme="light">
          <div class="bg-holder bg-auth-card-shape" style="background-image:url(${pageContext.request.contextPath}/resources/design/public/assets/img/icons/spot-illustrations/half-circle.png);">
          </div>
          <!--/.bg-holder-->

          <div class="z-1 position-relative"><p class="link-light mb-4 font-sans-serif fs-5 d-inline-block fw-bolder">falcon</p>
            <p class="opacity-75 text-white">With the power of Falcon, you can now focus only on functionaries for your digital products, while leaving the UI design on us!</p>
          </div>
        </div>
        <div class="mt-3 mb-4 mt-md-4 mb-md-5" data-bs-theme="light">
          <p class="mb-0 mt-4 mt-md-5 fs-10 fw-semi-bold text-white opacity-75">Read our <a class="text-decoration-underline text-white" href="#!">terms</a> and <a class="text-decoration-underline text-white" href="#!">conditions </a></p>
        </div>
      </div>
      <div class="col-md-7 d-flex flex-center">
        <div class="p-4 p-md-5 flex-grow-1">
          <div class="text-center"><img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/design/public/assets/img/icons/spot-illustrations/45.png" alt="shield" width="100" />
            <h3>See you again!</h3>
            <p>Thanks for using Falcon. You are <br />now successfully signed out.</p><a class="btn btn-primary btn-sm mt-3" href="/account/login.do"><span class="fas fa-chevron-left me-1" data-fa-transform="shrink-4 down-1"></span>Return to Login</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>