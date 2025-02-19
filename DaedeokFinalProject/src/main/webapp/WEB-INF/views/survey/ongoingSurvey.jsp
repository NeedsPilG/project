<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!-- sidebar 있던자리 -->
<!-- ===============================================-->
<!--    content 시작    -->
<!-- ===============================================-->
<h1>진행중인 설문</h1>
<!-- ===============================================-->
<!--    content 끝    -->
<!-- ===============================================-->

<!-- ===============================================-->
<!--    설정 시작    -->
<!-- ===============================================-->
<div class="offcanvas offcanvas-end settings-panel border-0"
	id="settings-offcanvas" tabindex="-1"
	aria-labelledby="settings-offcanvas">
	<div
		class="offcanvas-header settings-panel-header justify-content-between bg-shape">
		<div class="z-1 py-1">
			<div class="d-flex justify-content-between align-items-center mb-1">
				<h5 class="text-white mb-0 me-2">
					<span class="fas fa-palette me-2 fs-9"></span>Settings
				</h5>
				<button class="btn btn-primary btn-sm rounded-pill mt-0 mb-0"
					data-theme-control="reset" style="font-size: 12px">
					<span class="fas fa-redo-alt me-1" data-fa-transform="shrink-3"></span>Reset
				</button>
			</div>
			<p class="mb-0 fs-10 text-white opacity-75">Set your own
				customized style</p>
		</div>
		<div class="z-1" data-bs-theme="dark">
			<button class="btn-close z-1 mt-0" type="button"
				data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
	</div>
	<div class="offcanvas-body scrollbar-overlay px-x1 h-100"
		id="themeController">
		<h5 class="fs-9">Color Scheme</h5>
		<p class="fs-10">Choose the perfect color mode for your app.</p>
		<div class="btn-group d-block w-100 btn-group-navbar-style">
			<div class="row gx-2">
				<div class="col-4">
					<input class="btn-check" id="themeSwitcherLight" name="theme-color"
						type="radio" value="light" data-theme-control="theme" /> <label
						class="btn d-inline-block btn-navbar-style fs-10"
						for="themeSwitcherLight"> <span
						class="hover-overlay mb-2 rounded d-block"><img
							class="img-fluid img-prototype mb-0"
							src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/falcon-mode-default.jpg"
							alt="" /></span><span class="label-text">Light</span></label>
				</div>
				<div class="col-4">
					<input class="btn-check" id="themeSwitcherDark" name="theme-color"
						type="radio" value="dark" data-theme-control="theme" /> <label
						class="btn d-inline-block btn-navbar-style fs-10"
						for="themeSwitcherDark"> <span
						class="hover-overlay mb-2 rounded d-block"><img
							class="img-fluid img-prototype mb-0"
							src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/falcon-mode-dark.jpg"
							alt="" /></span><span class="label-text"> Dark</span></label>
				</div>
				<div class="col-4">
					<input class="btn-check" id="themeSwitcherAuto" name="theme-color"
						type="radio" value="auto" data-theme-control="theme" /> <label
						class="btn d-inline-block btn-navbar-style fs-10"
						for="themeSwitcherAuto"> <span
						class="hover-overlay mb-2 rounded d-block"><img
							class="img-fluid img-prototype mb-0"
							src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/falcon-mode-auto.jpg"
							alt="" /></span><span class="label-text"> Auto</span></label>
				</div>
			</div>
		</div>
		<hr />
		<div class="d-flex justify-content-between">
			<div class="d-flex align-items-start">
				<img class="me-2"
					src="${pageContext.request.contextPath}/resources/design/public/assets/img/icons/left-arrow-from-left.svg"
					width="20" alt="" />
				<div class="flex-1">
					<h5 class="fs-9">RTL Mode</h5>
					<p class="fs-10 mb-0">Switch your language direction</p>
					<a class="fs-10"
						href="documentation/customization/configuration.html">RTL
						Documentation</a>
				</div>
			</div>
			<div class="form-check form-switch">
				<input class="form-check-input ms-0" id="mode-rtl" type="checkbox"
					data-theme-control="isRTL" />
			</div>
		</div>
		<hr />
		<div class="d-flex justify-content-between">
			<div class="d-flex align-items-start">
				<img class="me-2"
					src="${pageContext.request.contextPath}/resources/design/public/assets/img/icons/arrows-h.svg"
					width="20" alt="" />
				<div class="flex-1">
					<h5 class="fs-9">Fluid Layout</h5>
					<p class="fs-10 mb-0">Toggle container layout system</p>
					<a class="fs-10"
						href="documentation/customization/configuration.html">Fluid
						Documentation</a>
				</div>
			</div>
			<div class="form-check form-switch">
				<input class="form-check-input ms-0" id="mode-fluid" type="checkbox"
					data-theme-control="isFluid" />
			</div>
		</div>
		<hr />
		<div class="d-flex align-items-start">
			<img class="me-2"
				src="${pageContext.request.contextPath}/resources/design/public/assets/img/icons/paragraph.svg"
				width="20" alt="" />
			<div class="flex-1">
				<h5 class="fs-9 d-flex align-items-center">Navigation Position</h5>
				<p class="fs-10 mb-2">Select a suitable navigation system for
					your web application</p>
				<div>
					<select class="form-select form-select-sm"
						aria-label="Navbar position" data-theme-control="navbarPosition">
						<option value="vertical">Vertical</option>
						<option value="top">Top</option>
						<option value="combo">Combo</option>
						<option value="double-top">Double Top</option>
					</select>
				</div>
			</div>
		</div>
		<hr />
		<h5 class="fs-9 d-flex align-items-center">Vertical Navbar Style</h5>
		<p class="fs-10 mb-0">Switch between styles for your vertical
			navbar</p>
		<p>
			<a class="fs-10"
				href="modules/components/navs-and-tabs/vertical-navbar.html#navbar-styles">See
				Documentation</a>
		</p>
		<div class="btn-group d-block w-100 btn-group-navbar-style">
			<div class="row gx-2">
				<div class="col-6">
					<input class="btn-check" id="navbar-style-transparent" type="radio"
						name="navbarStyle" value="transparent"
						data-theme-control="navbarStyle" /> <label
						class="btn d-block w-100 btn-navbar-style fs-10"
						for="navbar-style-transparent"> <img
						class="img-fluid img-prototype"
						src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/default.png"
						alt="" /><span class="label-text"> Transparent</span></label>
				</div>
				<div class="col-6">
					<input class="btn-check" id="navbar-style-inverted" type="radio"
						name="navbarStyle" value="inverted"
						data-theme-control="navbarStyle" /> <label
						class="btn d-block w-100 btn-navbar-style fs-10"
						for="navbar-style-inverted"> <img
						class="img-fluid img-prototype"
						src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/inverted.png"
						alt="" /><span class="label-text"> Inverted</span></label>
				</div>
				<div class="col-6">
					<input class="btn-check" id="navbar-style-card" type="radio"
						name="navbarStyle" value="card" data-theme-control="navbarStyle" />
					<label class="btn d-block w-100 btn-navbar-style fs-10"
						for="navbar-style-card"> <img
						class="img-fluid img-prototype"
						src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/card.png"
						alt="" /><span class="label-text"> Card</span></label>
				</div>
				<div class="col-6">
					<input class="btn-check" id="navbar-style-vibrant" type="radio"
						name="navbarStyle" value="vibrant"
						data-theme-control="navbarStyle" /> <label
						class="btn d-block w-100 btn-navbar-style fs-10"
						for="navbar-style-vibrant"> <img
						class="img-fluid img-prototype"
						src="${pageContext.request.contextPath}/resources/design/public/assets/img/generic/vibrant.png"
						alt="" /><span class="label-text"> Vibrant</span></label>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ===============================================-->
<!--    설정 끝    -->
<!-- ===============================================-->


<script>
</script>
