<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html lang="euc-kr">

<head>
    <meta charset="utf-8">
    <title>pillipop | service</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/img/4_board/Pillipop.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/4_board/Pillipop.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/4_board/Pillipop.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">
    <!-- headerfooter-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_headerfooter.css">
    <!-- Css -->
    <link href="<%=request.getContextPath()%>/resources/css/4_service.css" rel="stylesheet" type="text/css" />
    <!-- Theme mode-->
    <script>
        let mode = window.localStorage.getItem('mode'),
            root = document.getElementsByTagName('html')[0];
        if (mode !== undefined && mode === 'dark') {
            root.classList.add('dark-mode');
        } else {
            root.classList.remove('dark-mode');
        }
    </script>
    <!-- Page loading styles-->
    <style>
        .page-loading {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            -webkit-transition: all .4s .2s ease-in-out;
            transition: all .4s .2s ease-in-out;
            background-color: #fff;
            opacity: 0;
            visibility: hidden;
            z-index: 9999;
        }
        
        .dark-mode .page-loading {
            background-color: #121519;
        }
        
        .page-loading.active {
            opacity: 1;
            visibility: visible;
        }
        
        .page-loading-inner {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            text-align: center;
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
            -webkit-transition: opacity .2s ease-in-out;
            transition: opacity .2s ease-in-out;
            opacity: 0;
        }
        
        .page-loading.active>.page-loading-inner {
            opacity: 1;
        }
        
        .page-loading-inner>span {
            display: block;
            font-family: 'Inter', sans-serif;
            font-size: 1rem;
            font-weight: normal;
            color: #6f788b;
        }
        
        .dark-mode .page-loading-inner>span {
            color: #fff;
            opacity: .6;
        }
        
        .page-spinner {
            display: inline-block;
            width: 2.75rem;
            height: 2.75rem;
            margin-bottom: .75rem;
            vertical-align: text-bottom;
            background-color: #d7dde2;
            border-radius: 50%;
            opacity: 0;
            -webkit-animation: spinner .75s linear infinite;
            animation: spinner .75s linear infinite;
        }
        
        .dark-mode .page-spinner {
            background-color: rgba(255, 255, 255, .25);
        }
        
        @-webkit-keyframes spinner {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }
            50% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }
        
        @keyframes spinner {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }
            50% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }
    </style>
    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/fullcalendar/main.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
</head>

<!-- Body-->
<body>
    <style>
        body {
            font-family: "NanumSquareR";
        }
    </style>
    <!-- Page loading spinner-->
    <%@ include file="../../common/loading.jsp" %>
    
    <!-- Page wrapper-->
    <main class="page-wrapper">
        
        <!-- header -->
    	<%@ include file="../../common/header.jsp" %>

        <!-- Classes (Tabs)-->
        <section class="container pt-5 mt-lg-3 mt-xl-4 mt-xxl-5">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                    <li class="breadcrumb-item "><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item ">커뮤니티</li>
                    <li class="breadcrumb-item presentPage">고객센터</li> 
                </ol>
            </nav>
            <h2 class="h1 text-center pt-2 pt-sm-3">고객센터</h2>
            <p class="text-center pb-3 mb-3 mb-lg-4">약관</p>
            <!-- Nav tabs-->
            <ul class="nav nav-tabs flex-nowrap overflow-auto text-nowrap mx-auto pb-3 mb-3 mb-lg-4" style="
                margin: 0 auto; width: fit-content;" role="tablist">
                <li class="nav-item mb-0"><a class="nav-link active" href="#beginners" data-bs-toggle="tab" role="tab">회원가입</a></li>
                <li class="nav-item mb-0"><a class="nav-link" href="#stretching" data-bs-toggle="tab" role="tab">서비스</a></li>
                <li class="nav-item mb-0"><a class="nav-link" href="#fly-yoga" data-bs-toggle="tab" role="tab">구매</a></li>
                <li class="nav-item mb-0"><a class="nav-link" href="#for-pregnant" data-bs-toggle="tab" role="tab">개인정보보호</a></li>
            </ul>
            <!-- Tab content-->
            <div class="tab-content">
                <!-- 회원가입 -->
                <div class="tab-pane fade show active" id="beginners" role="tabpanel">
                    <div class="col-md-6 col-lg-5 col-xl-4 offset-lg-1">
                        <div class="ps-md-4 ps-lg-0">
                            <h2 class="mb-xl-4">회원가입</h2>
                            <p class="pb-3 mb-3 mb-xl-4">① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br> ② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. 1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이
                                경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다. 2. 등록 내용에 허위, 기재누락, 오기가 있는 경우 3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우<br> ③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.<br> ④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여
                                회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</p>
                            <h2 class="mb-xl-4">회원 탈퇴 및 자격 상실 등</h2>
                            <p class="pb-3 mb-3 mb-xl-4">① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.<br> ② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다. 1. 가입 신청 시에 허위 내용을 등록한 경우 2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 3. 다른 사람의 “몰” 이용을
                                방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우 4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br> ③ “몰”이 회원 자격을 제한․정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.<br> ④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을
                                말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p>
                        </div>
                    </div>
                </div>
                <!-- 서비스의 제공 및 변경 -->
                <div class="tab-pane fade" id="stretching" role="tabpanel">
                    <div class="row align-items-lg-center">
                        <div class="col-md-6 col-lg-5 col-xl-4 offset-lg-1">
                            <div class="ps-md-4 ps-lg-0">
                                <h2 class="mb-xl-4">서비스의 제공 및 변경</h2>
                                <p class="pb-3 mb-3 mb-xl-4">① “몰”은 다음과 같은 업무를 수행합니다. 1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결 2. 구매계약이 체결된 재화 또는 용역의 배송 3. 기타 “몰”이 정하는 업무<br> ② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및
                                    제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br> ③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br> ④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는
                                    과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
                                <h2 class="mb-xl-4">서비스의 중단</h2>
                                <p class="pb-3 mb-3 mb-xl-4"> ① “몰”은 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br> ② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br> ③ 사업종목의 전환,
                                    사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 청약철회 -->
                <div class="tab-pane fade" id="fly-yoga" role="tabpanel">
                    <div class="row align-items-lg-center">
                        <div class="col-md-6 col-lg-5 col-xl-4 offset-lg-1">
                            <div class="ps-md-4 ps-lg-0">
                                <h2 class="mb-xl-4">청약철회 등</h2>
                                <p class="pb-3 mb-3 mb-xl-4"> ① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에
                                    관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.<br> ② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다. 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다) 2. 이용자의 사용 또는 일부 소비에
                                    의하여 재화 등의 가치가 현저히 감소한 경우 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우 4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br> ③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의
                                    조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br> ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</p>
                                <h2 class="mb-xl-4">청약철회 등의 효과</h2>
                                <p class="pb-3 mb-3 mb-xl-4">① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br> ② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐
                                    등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br> ③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나
                                    계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.<br> ④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 개인정보보호 -->
                <div class="tab-pane fade" id="for-pregnant" role="tabpanel">
                    <div class="row align-items-lg-center">
                        <div class="col-md-6 col-lg-5 col-xl-4 offset-lg-1">
                            <div class="ps-md-4 ps-lg-0">
                                <h2 class="mb-xl-4">개인정보보호</h2>
                                <p class="pb-3 mb-3 mb-xl-4"> ① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.<br> ② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br> ③ “몰”은 이용자의 개인정보를 수집·이용하는 때에는
                                    당해 이용자에게 그 목적을 고지하고 동의를 받습니다.<br> ④ “몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.<br> ⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를
                                    받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br> ⑥ 이용자는
                                    언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br> ⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌
                                    등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br> ⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.<br> ⑨ “몰”은 개인정보의 수집·이용·제공에 관한 동의 란을 미리 선택한 것으로 설정해두지
                                    않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- FAQ -->
        <section class="container py-5 mt-2 mt-sm-3 mt-md-4">
            <h2 class="h1 text-center pt-lg-3">FAQ</h2>
            <p class="pb-3 pb-md-4 mb-0 mb-sm-2 mb-lg-3 text-center">자주 묻는 질문</p>
            <div class="row align-items-lg-center">
                <!-- Accordion-->
                <div class="col-md-6 col-lg-5 pb-2 pb-lg-0 mb-4 mb-md-0">
                    <div class="accordion accordion-alt" id="industries">
                        <div class="accordion-item mb-n3 mb-lg-n2 mb-xl-1">
                            <h3 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-binded-content="#finance-img" data-bs-target="#finance" aria-expanded="true" aria-controls="finance">회원가입은 어떻게 하나요?</button>
                            </h3>
                            <div class="accordion-collapse collapse show" id="finance" data-bs-parent="#industries">
                                <div class="accordion-body">Pillipop에 오신 걸 환영합니다! <br> 사이트 상단에 회원가입 버튼을 클릭하신 후, 절차에 따라 회원가입을 진행하시면 됩니다. </div>
                            </div>
                        </div>
                        <div class="accordion-item mb-n3 mb-lg-n2 mb-xl-1">
                            <h3 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-binded-content="#tech-img" data-bs-target="#tech" aria-expanded="false" aria-controls="tech">챗봇 사용법을 알고 싶어요.</button>
                            </h3>
                            <div class="accordion-collapse collapse" id="tech" data-bs-parent="#industries">
                                <div class="accordion-body">사이트 메인 페이지 우측 하단에 챗봇 버튼을 클릭하신 후, 카카오톡 계정으로 로그인하여 이용하시면 됩니다. </div>
                            </div>
                        </div>
                        <div class="accordion-item mb-n3 mb-lg-n2 mb-xl-1">
                            <h3 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-binded-content="#medicine-img" data-bs-target="#medicine" aria-expanded="false" aria-controls="medicine">게시글과 댓글을 작성하고 싶어요.</button>
                            </h3>
                            <div class="accordion-collapse collapse" id="medicine" data-bs-parent="#industries">
                                <div class="accordion-body">게시글과 댓글은 Pillipop 회원만 이용하실 수 있습니다. 회원가입을 완료하시고 이용해주세요.</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Binded images-->
                <div class="col-md-6 col-lg-7 col-xl-6 offset-xl-1">
                    <div class="ps-lg-4 ps-xl-0">
                        <div class="binded-content">
                            <div class="binded-item active" id="finance-img"><img class="rounded-5" src="<%=request.getContextPath()%>/resources/img/4_board/industries01.jpg" alt="Image"></div>
                            <div class="binded-item" id="tech-img"><img class="rounded-5" src="<%=request.getContextPath()%>/resources/img/4_board/industries02.jpg" alt="Image"></div>
                            <div class="binded-item" id="medicine-img"><img class="rounded-5" src="<%=request.getContextPath()%>/resources/img/4_board/industries03.jpg" alt="Image"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
     
    <!-- footer -->
    <%@ include file="../../common/footer.jsp" %>

    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/lightgallery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/plugins/video/lg-video.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/fullcalendar/main.min.js"></script>
    <!-- Main theme script-->
    <script src="<%=request.getContextPath()%>/resources/js/theme.min.js"></script>
</body>

</html>