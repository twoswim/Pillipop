<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="euc-kr">

<head>
    <meta charset="utf-8">
    <title>Pillipop | Survey</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/favicon/favicon-16x16.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">
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
    <!-- Page loading scripts-->
    <script>
        (function() {
            window.onload = function() {
                const preloader = document.querySelector('.page-loading');
                preloader.classList.remove('active');
                setTimeout(function() {
                    preloader.remove();
                }, 1500);
            };
        })();
    </script>
    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/headerfooter.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/3_survey.css">
    
    <script src="https://unpkg.com/jquery"></script>
	<link href="https://unpkg.com/survey-jquery@1.9.55/defaultV2.css" type="text/css" rel="stylesheet"/>
	<script src="https://unpkg.com/survey-jquery@1.9.55/survey.jquery.min.js"></script>
	
	<link href="https://unpkg.com/surveyjs/dist/survey.min.css" rel="stylesheet" type="text/css">
<script src="https://unpkg.com/formjs-plugin@3/dist/formjs.min.js"></script>
<script src="https://unpkg.com/surveyjs/dist/surveyjs.min.js"></script>
	<script src="https://cdn.polyfill.io/v3/polyfill.min.js?features=Array.from,Element.prototype.closest,Element.prototype.matches,Promise,Promise.prototype.finally,AbortController,fetch"></script>
	
	<script type="text/javascript">
	Survey.StylesManager.applyTheme("defaultV2");

	var surveyJSON = {"logoPosition":"right","pages":[{"name":"page1","elements":[{"type":"text","name":"question1","title":"필리가 고객님을 어떻게 부르면 좋을까요?","isRequired":true},{"type":"text","name":"question2","title":"321님은 몇살이신가요?","description":"나이에 따라 필요한 영양성분이 달라질 수 있어요.\n\n","isRequired":true,"inputType":"number","min":10,"max":100},{"type":"text","name":"question3","title":"ㅁㄴㅇㄹ님의 키를 적어주세요.","description":"영양성분 추천에 체질량지수(BMI)를 활용합니다.\n\n","isRequired":true},{"type":"text","name":"question15","title":"ㅁㄴㅇㄹ님의 몸무게를 적어주세요.","description":"영양성분 추천에 체질량지수(BMI)를 활용합니다.\n\n","isRequired":true}]},{"name":"page2","elements":[{"type":"checkbox","name":"question4","title":"321님이 불편하시거나 걱정되는 3가지를 선택하세요.","description":"우선적으로 관리가 필요한 것을 선택하세요.\n\n","isRequired":true,"choices":[{"value":"item1","text":"혈관/혈액순환"},{"value":"item2","text":"소화/장"},{"value":"item3","text":"피부"},{"value":"item4","text":"두뇌활동"},{"value":"item5","text":"피로감"},{"value":"item6","text":"면역"}],"separateSpecialChoices":true,"showNoneItem":true,"noneText":"선택할 것이 없어요.","maxSelectedChoices":3},{"type":"checkbox","name":"question5","visibleIf":"{question4} contains 'item1'","title":"혈관/혈액순환 321님에게 해당하는 것을 모두 선택하세요.","requiredIf":"{question4} contains 'item1'","choices":["상처가 생기면 잘 아물지 않아요.","손끝 또는 발끝이 자주 저려요.","충치가 생기고 잇몸이 자주 붓고 피가 나요.","선택할 것이 없지만 혈관/혈액순환이 걱정돼요."],"showNoneItem":true,"noneText":"선택할 것이 없지만 혈관/혈액순환이 걱정돼요."},{"type":"checkbox","name":"question6","visibleIf":"{question4} contains 'item2'","title":"소화/장 321님에게 해당하는 것을 모두 선택하세요.","requiredIf":"{question4} contains 'item2'","choices":["복통이나 속 쓰림이 자주 발생해요.","변비가 있어요.","설사와 같은 묽은 변을 자주 보는 편이에요.","술을 마실 때 얼굴이나 몸이 붉어지고 소화가 안돼요.","배뇨 후 소변이 남아있는 느낌(잔뇨감)이 있어요."],"showNoneItem":true,"noneText":"선택할 것이 없지만 소화력 개선이 필요해요."},{"type":"checkbox","name":"question7","visibleIf":"{question4} contains 'item3'","title":" 피부321님에게 해당하는 것을 모두 선택하세요.","requiredIf":"{question4} contains 'item3'","choices":["피부가 건조하여 벗겨지거나 머리에 비듬이 많이 생겨요.","여드름이 많아서 걱정이에요.","피부에 염증이 자주 생겨요.","입안이 헐고 입술이 자주 갈라져요."],"showNoneItem":true,"noneText":"선택할 것이 없지만 피부 건강이 걱정돼요."},{"type":"checkbox","name":"question8","visibleIf":"{question4} contains 'item4'","title":"두뇌활동321님에게 해당하는 것을 모두 선택하세요.","requiredIf":"{question4} contains 'item4'","choices":["기억력이 떨어지는 것 같아요.","두통이 자주 생겨요.","불안 혹은 긴장감을 자주 느껴요.","우울한 감정을 자주 느껴요."],"showNoneItem":true,"noneText":"선택할 것이 없지만 두뇌활동 건강이 걱정돼요."},{"type":"checkbox","name":"question9","visibleIf":"{question4} contains 'item5'","title":"피로감321님에게 해당하는 것을 모두 선택하세요.","requiredIf":"{question4} contains 'item5'","choices":["무기력하고 식욕이 없어요.","자고 일어나도 아침부터 피곤해요.","신경이 예민하고 잠을 이루기 힘들어요.","잠을 매우 잘 자요.","잠을 자다가 소변을 보기 위해 잠에 깨는 경우가 잦아요."],"showNoneItem":true,"noneText":"선택할 것이 없지만 피로감이 있어요."},{"type":"checkbox","name":"question10","visibleIf":"{question4} contains 'item6'","title":"면역321님에게 해당하는 것을 모두 선택하세요.","requiredIf":"{question4} contains 'item6'","choices":["스트레스가 매우 많아요.","아토피 또는 비염 등 알레르기 질환이 있어요.","감기와 같은 감염성 질환에 자주 걸려요."],"showNoneItem":true,"noneText":"선택할 것이 없지만 면역이 걱정돼요."}]},{"name":"page3","elements":[{"type":"radiogroup","name":"question11","title":"하루에 햇빛을 받으며 야외활동을 얼마나 하나요?","choices":["4시간 이상 야외활동을 해요.","1시간에서 4시간 이내로 야외활동을 해요.","1시간 이내로 야외활동을 해요."]},{"type":"checkbox","name":"question12","title":"321님의 식습관을 모두 선택하세요.","choices":["생선을 일주일에 3번 이상 먹어요.","녹황색 채소(시금치, 브로콜리 등)를 거의 매일 먹어요.","일주일 동안 과일(사과 1개 또는 귤 3개 정도)을 4일 이상 먹어요.","일주일 동안 4일 이상 고기(삼겹살 등 메인 요리)를 먹어요.","단 음식(빵/과자, 초콜릿, 탄산음료 등)을 자주 먹어요.","일주일 동안 식사를 5회 이상 거르고 있어요.","선택할 것이 없어요."]},{"type":"checkbox","name":"question13","title":"321님의 기호식품 섭취 습관을 모두 선택하세요.","choices":["하루에 담배를 반 갑 이상 피워요.","하루에 커피를 3잔 이상 마셔요.","하루에 물을 맥주잔으로 4잔도 안 마셔요.","일주일에 인스턴트 음식(라면, 편의점 도시락 등)으로 3번 이상 식사를 해요.","선택할 것이 없어요."]},{"type":"checkbox","name":"question14","title":"321님에게 해당하는 것을 모두 선택하세요.","choices":["하루 12시간 이상의 업무 또는 학업을 일주일에 3일 이상해요.","하루에 6시간 이상 핸드폰 또는 모니터 화면을 집중해서 봐요.","목이 자주 건조해지거나 칼칼함이 느껴져요.","시험을 준비하거나 승진 등으로 집중력이 필요한 시기예요.","식사량을 줄이는 다이어트를 하고 있어요.","입에 구내염이 자주 생겨요.","선택할 것이 없어요."]}]}]};

	function sendDataToServer(survey) {
	    //send Ajax request to your web server
	    alert("The results are: " + JSON.stringify(survey.data));
	}

	var survey = new Survey.Model(surveyJSON);
	$("#surveyContainer").Survey({
	    model: survey,
	    onComplete: sendDataToServer
	});
	</script>
	
	<script type="text/javascript">
	var formEl = document.querySelector('[data-surveyjs-form]');
	var options = { url: 'json/survey.json' };
	var mySurvey = new Survey( formEl, options );
	mySurvey.init().then(function( response ){
	    console.log('SURVEY DATA RETRIEVED', response);
	});
	</script>
</head>
<!-- Body-->

<body class="bg-secondary">
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div>
    <!-- Page wrapper-->
    <main class="page-wrapper">

<%-- header --%>
	<%@ include file="../../common/header.jsp" %>

        <!-- Page content-->

        <div id="survey" style="margin: auto;">
        
        <div id="surveyContainer"></div>

			<div class="surveyjs-container" data-surveyjs-container>
				<form action="page.jsp" name="surveyjs-form" class="surveyjs-form"
					data-surveyjs-form novalidate>
					<div class="surveyjs-body questionsList clearfix"
						data-surveyjs-body></div>
					<div class="surveyjs-footer">
						<button type="submit">SEND</button>
					</div>
				</form>
			</div>


			<div class="survey-wrap">
                <div class="survey-contents">
                    <div class="survey-contents-inner">
                        <button class="survey-close"><i class="ai-cross-alt" style="font-size: 23px;"></i></button>
                        <div class="survey-start">
                            <div class="start-header"><span class="icon icon-survey-pilly-logo"><img src="<%=request.getContextPath()%>/resources/img/0_headerfooter/logo.png" style="width:5rem;"></span>
                                <h2><span class="light">필리팝!</span><br> 내 건강을 알려줘! </h2>
                            </div>
                            <div class="start-intro">
                                <p> 몇 가지 질문에 답하고 <br>나에게 필요한 영양성분을 알아보세요. <br><br><span>약 3분정도 소요됩니다.</span></p>
                                <div class="btn-wrap"><a href="#" id="btn-start" class="btn btn-radius btn-dark">시작하기</a>
                                    <p class="warning">※ 질병의 진단 및 치료는 전문적인 의료기관을 이용하세요.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <form id="frm-survey" method="POST" action="/survey"><input type="hidden" name="_csrf" value="8571dafc-ab09-4c6d-a8b7-12959ca67c34"><input type="hidden" name="rtnUrl" value="/survey/bc6de18f-1e48-42cd-90be-cdaacac62286"></form>
                <script>
                    $(function() {
                        $(document).on("click", "#btn-start", function(a) {
                            etag("survey", "first", "시작", 0);
                            $("#frm-survey").submit()
                        })
                    });
                </script>

            </div>

        </div>

        <div id="survey">
            <h1 class="only-sr">건강설문</h1>
            <div class="survey-wrap">
                <script src="/scripts/emaildomain.js"></script>
                <div class="survey-contents">
                    <div class="survey-contents-inner">
                        <a href="#" class="close-survey" onclick="closeSurvey('/survey/bc6de18f-1e48-42cd-90be-cdaacac62286'); return false;"><img src="https://pilly.kr/images/btn-gnb-close.png" srcset="https://pilly.kr/images/btn-gnb-close.png 1x, https://pilly.kr/images/btn-gnb-close.png 2x, https://pilly.kr/images/btn-gnb-close.png 3x, " alt=""></a>
                        <div class="survey-test">
                            <nav class="survey-test-header">
                                <h2 class="only-sr">건강설문 단계</h2>
                                <ul class="step-list-wrap">
                                    <li data="기본정보" class="on"><span>기본정보</span></li>
                                    <li data="증상/불편"><span>증상/불편</span></li>
                                    <li data="생활 습관"><span>생활 습관</span></li>
                                    <li data="기타"><span>기타</span></li>
                                </ul>
                            </nav>
                            <div class="survey-progress">
                                <div id="survey-progress-rate" style="width: 12%;"></div>
                            </div>
                            <div class="survey-question-contents">
                                <h2 class="only-sr">건강설문 질문</h2>
                                <section class="question-section"><em id="qNum">질문 3</em>
                                    <h2 id="qTitle" maxallowed="1">
                                        <p>${loginMember.u_nickname}님은 몇살이신가요?</p><span class=""></span>
                                    </h2>
                                    <p id="qContent">나이에 따라 필요한 영양성분이 달라질 수 있어요.</p>
                                    <ul class="question-answer-wrap">
                                        <li>
                                            <div class="question-input-field" style="padding-left: 0;"> <input type="radio" class="input-radio input-answer" name="answer" value="286" data-only="null" checked="" style="display: none;"> <input id="content" type="tel" class="input-text input-small input-full" placeholder="나이"
                                                    maxlength="10" min="10" max="110" required="true"> </div>
                                        </li>
                                    </ul>
                                </section>
                            </div>
                            <div class="survey-errormsg"></div>
                            <div class="survey-question-footer"><button id="btn-prev" class="btn btn-radius">이전</button><button id="btn-next" class="btn btn-radius btn-dark">다음</button></div>
                        </div>


						<div class="survey-test">
							<nav class="survey-test-header">
								<h2 class="only-sr">건강설문 단계</h2>
								<ul class="step-list-wrap">
									<li data="기본정보" class=""><span>기본정보</span></li>
									<li data="증상/불편" class="on"><span>증상/불편</span></li>
									<li data="생활 습관"><span>생활 습관</span></li>
									<li data="기타"><span>기타</span></li>
								</ul>
							</nav>
							<div class="survey-progress">
								<div id="survey-progress-rate" style="width: 18%;"></div>
							</div>
							<div class="survey-question-contents">
								<h2 class="only-sr">건강설문 질문</h2>
								<section class="question-section">
									<em id="qNum">질문 4</em>
									<h2 id="qTitle" maxallowed="3">
										<p>asd님이 불편하시거나 걱정되는 3가지를 선택하세요.</p>
										<span class=""></span>
									</h2>
									<p id="qContent">우선적으로 관리가 필요한 것을 선택하세요.</p>
									<ul class="question-answer-wrap">
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="296" data-only="null"> <span></span>
												혈관/혈액순환
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="297" data-only="null"> <span></span>
												소화/장
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="298" data-only="null"> <span></span>
												피부
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="299" data-only="null"> <span></span>
												눈
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="300" data-only="null"> <span></span>
												두뇌활동
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="301" data-only="null"> <span></span>
												피로감
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="302" data-only="null"> <span></span>
												뼈와 관절
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="303" data-only="null"> <span></span>
												면역
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="304" data-only="null"> <span></span>
												모발
										</label></li>
										<li><label class="label-checkbox label-question">
												<input type="checkbox" class="input-checkbox input-answer"
												name="answer" value="305" data-only="1"> <span></span>
												선택할 것이 없어요.
										</label></li>
									</ul>
								</section>
							</div>
							<div class="survey-errormsg"></div>
							<div class="survey-question-footer">
								<button id="btn-prev" class="btn btn-radius">이전</button>
								<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
							</div>
						</div>
					</div>
                </div>
                <script>
                    var _sUuid = "";
                    var _qUuid = "";
                    var _prevQUuid = "";
                    var _estimate = new Date();

                    function errorClear() {
                        $(".survey-errormsg").empty()
                    }

                    function errorPrint(a) {
                        $(".survey-errormsg").append('<i class="fas fa-exclamation-circle"></i> ' + a)
                    }
                    $(function() {
                        postSurvey();
                        $(document).on("click", "input[type=checkbox]:checked", function(a) {
                            if ($("input[type=checkbox]:last").attr("data-only") == 1) {
                                $("input[type=checkbox]:last:checked").prop("checked", false)
                            }
                        });
                        $(document).on("click", "input[type=checkbox]:checked", function(a) {
                            if ($(this).attr("data-only") == 1) {
                                $("input[type=checkbox]").prop("checked", false);
                                $(this).prop("checked", true)
                            }
                        });
                        $(document).on("focus", "input[type=text]", function(a) {
                            if ($(this).attr("data-only") == 1) {
                                $("input[type=checkbox]").prop("checked", false)
                            }
                            $("#content").parent().find("input").prop("checked", true)
                        });
                        $(document).on("keyup", function(a) {
                            if (a.keyCode == 13) {
                                $("#btn-next").click()
                            }
                        });
                        $(document).on("click", "#btn-next", function(g) {
                            errorClear();
                            var a = "";
                            $(".input-answer:checked").each(function() {
                                a += "," + $(this).val()
                            });
                            a = a.replace(/\,/, "");
                            var f = new Date();
                            var c = "";
                            if ($("#content").parent().find("input").prop("checked")) {
                                c = $("#content").val()
                            }
                            var b = false;
                            var h = "답변을 입력해주세요.";
                            var d = $("#qTitle").attr("maxAllowed");
                            $(".input-text").each(function() {
                                if ($(this).attr("required") && $(this).val() == "") {
                                    b = true
                                }
                                if (!b) {
                                    var k = $(this).attr("placeholder");
                                    var i = $(this).attr("type").toLowerCase();
                                    var j = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                                    var e = /^\d+$/;
                                    if (i == "tel" || i == "number") {
                                        if (!e.test($(this).val())) {
                                            b = true;
                                            h = "숫자만 입력해주세요."
                                        } else {
                                            if (k == "나이" && ($(this).val() < 10 || $(this).val() > 110)) {
                                                b = true;
                                                h = "10부터 110까지 입력가능합니다."
                                            } else {
                                                if (k == "키" && ($(this).val() < 100 || $(this).val() > 250)) {
                                                    b = true;
                                                    h = "100부터 250까지 입력가능합니다."
                                                } else {
                                                    if (k == "몸무게" && ($(this).val() < 30 || $(this).val() > 190)) {
                                                        b = true;
                                                        h = "30부터 190까지 입력가능합니다."
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        if (k == "이메일" && (!j.test(String($(this).val()).toLowerCase()))) {
                                            if ($("#content").parent().find("input").prop("checked")) {
                                                b = true;
                                                h = "이메일을 확인해주세요."
                                            }
                                        }
                                    }
                                }
                            });
                            if (!b) {
                                if (d > 1 && d < 99) {
                                    if (d < $("input[type=checkbox]:checked").length) {
                                        b = true;
                                        h = d + "가지만 선택해 주세요."
                                    }
                                }
                            }
                            if (b) {
                                errorPrint(h);
                                $("#content").addClass("parsley-error");
                                $("#content").focus()
                            } else {
                                $.ajax({
                                    method: "POST",
                                    url: "/api/survey/v2/" + _sUuid + "/q/" + _qUuid,
                                    data: {
                                        answerIds: a,
                                        estimatedTime: (f - _estimate),
                                        content: c
                                    },
                                    success: function(e) {
                                        etag("survey", "next", "다음", 0);
                                        localStorage.setItem("survey[" + _sUuid + "][" + _qUuid + "]", a);
                                        localStorage.setItem("survey[" + _sUuid + "][" + _qUuid + "][content]", c);
                                        if (e.nextQuestionUuid != null) {
                                            getQuestion(e.nextQuestionUuid);
                                            history.pushState({
                                                qUuid: e.nextQuestionUuid
                                            }, "prev question", "/survey")
                                        } else {
                                            location.href = "/survey/sendTo?sUuid=" + _sUuid + "&rtnUrl=" + encodeURIComponent("/survey/bc6de18f-1e48-42cd-90be-cdaacac62286")
                                        }
                                    },
                                    error: function(i, j, e) {
                                        errorPrint("답변을 선택해주세요.")
                                    }
                                })
                            }
                        });
                        $(document).on("click", "#btn-prev", function(a) {
                            prevQuestion()
                        });
                        $(window).on("popstate", function(a) {
                            prevQuestion()
                        })
                    });

                    function prevQuestion() {
                        errorClear();
                        if ($("#qNum").html() != "질문 1") {
                            $.ajax({
                                method: "DELETE",
                                url: "/api/survey/v2/" + _sUuid + "/q/" + _prevQUuid,
                                success: function(a) {
                                    etag("survey", "prev", "이전", 0);
                                    getQuestion(_prevQUuid)
                                }
                            })
                        } else {
                            location.href = "/survey"
                        }
                    }

                    function postSurvey() {
                        errorClear();
                        $.ajax({
                            method: "POST",
                            url: "/api/survey/v2",
                            data: {
                                type: "PILLYV2"
                            },
                            success: function(a) {
                                _sUuid = a.uuid;
                                getQuestion(a.nextQuestionUuid)
                            }
                        })
                    }

                    function getQuestion(a) {
                        $.ajax({
                            method: "GET",
                            url: "/api/survey/v2/" + _sUuid + "/q/" + a,
                            success: function(i) {
                                _qUuid = a;
                                _prevQUuid = i.prevQuestionUuid;
                                $(".question-answer-wrap").empty();
                                $(".step-list-wrap li").removeClass("on");
                                $("#survey-progress-rate").css("width", i.progressRate + "%");
                                var h = 0;
                                $(".step-list-wrap li").each(function() {
                                    if (i.categoryTitle == $(this).attr("data")) {
                                        $(this).addClass("on");
                                        h++
                                    }
                                });
                                if (h == 0) {
                                    $(".step-list-wrap li").last().addClass("on")
                                }
                                $("#qTitle > span").removeClass();
                                var b = "";
                                if (i.code != null && i.code.indexOf("DISCOMFORT_") > -1) {
                                    var e = "icon-survey-question-" + i.code.split("_")[1].toLowerCase();
                                    $("#qTitle").addClass("withicon");
                                    $("#qTitle > span").addClass("icon " + e);
                                    if (i.code == "DISCOMFORT_BLOOD") {
                                        b = "혈관/혈액순환"
                                    } else {
                                        if (i.code == "DISCOMFORT_DIGESTION") {
                                            b = "소화/장"
                                        } else {
                                            if (i.code == "DISCOMFORT_SKIN") {
                                                b = "피부"
                                            } else {
                                                if (i.code == "DISCOMFORT_EYE") {
                                                    b = "눈"
                                                } else {
                                                    if (i.code == "DISCOMFORT_BRAIN") {
                                                        b = "두뇌활동"
                                                    } else {
                                                        if (i.code == "DISCOMFORT_FATIGUE") {
                                                            b = "피로감"
                                                        } else {
                                                            if (i.code == "DISCOMFORT_BONE") {
                                                                b = "뼈와 관절"
                                                            } else {
                                                                if (i.code == "DISCOMFORT_IMMUNE") {
                                                                    b = "면역"
                                                                } else {
                                                                    if (i.code == "DISCOMFORT_HAIR") {
                                                                        b = "모발"
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    b = " &nbsp; | &nbsp; " + b
                                } else {
                                    $("#qTitle").removeClass("withicon")
                                }
                                $("#qNum").html("질문 " + i.no + b);
                                $("#qTitle > p").html(i.title);
                                $("#qContent").html(i.content);
                                $("#qTitle").attr("maxAllowed", i.answerCount);
                                var c = "radio";
                                if (i.answerCount > 1) {
                                    c = "checkbox"
                                }
                                $.each(i.answerItems, function(j, k) {
                                    $(".question-answer-wrap").append(genAnswerCard(k, c, i.answerItems.length))
                                });
                                if (i.answerItems.length == 1) {
                                    $("#content").focus()
                                }
                                var g = localStorage.getItem("survey[" + _sUuid + "][" + a + "]");
                                var f = localStorage.getItem("survey[" + _sUuid + "][" + a + "][content]");
                                if (g != null) {
                                    var d = g.split(",");
                                    d.forEach(function(j) {
                                        $(".input-answer").each(function() {
                                            if ($(this).val() == j) {
                                                $(this).prop("checked", true)
                                            }
                                        });
                                        $("#content").val(f)
                                    })
                                }
                                if ("EMAIL" == i.code) {
                                    $("#btn-next").html("결과보기");
                                    $(".input-answer").first().prop("checked", true);
                                    $(".input-text").first().focus()
                                } else {
                                    $("#btn-next").html("다음")
                                }
                                _estimate = new Date();
                                EmailDomainHelper.init($("[type=email]"))
                            }
                        })
                    }

                    function genAnswerCard(f, b, a) {
                        var e = "";
                        e += "<li>";
                        if (f.textState == 1) {
                            if (a == 1) {
                                var c = "text";
                                var g = 'maxlength="10"';
                                var d = "";
                                if (f.title == "나이" || f.title == "키" || f.title == "몸무게") {
                                    c = "tel";
                                    if (f.title == "나이") {
                                        g = 'maxlength="10" min="10" max="110"'
                                    } else {
                                        if (f.title == "키") {
                                            g = 'maxlength="10" min="100" max="250"';
                                            d = "cm"
                                        } else {
                                            if (f.title == "몸무게") {
                                                g = 'maxlength="10" min="30" max="190"';
                                                d = "kg"
                                            }
                                        }
                                    }
                                } else {
                                    if (f.title == "이메일") {
                                        c = "email";
                                        g = 'maxlength="100"'
                                    }
                                }
                                e += '	<div class="question-input-field" style="padding-left: 0;">';
                                e += '	<input type="' + b + '" class="input-' + b + ' input-answer" name="answer" value="' + f.id + '" data-only="' + f.onlyState + '" checked style="display: none;" >';
                                e += '	<input id="content" type="' + c + '" class="input-text input-small input-full" placeholder="' + f.title + '" ' + g + ' required="true">';
                                if (d != "") {
                                    e += '	<span class="unit">' + d + "</span>"
                                }
                                e += "	</div>"
                            } else {
                                e += '	<div class="question-input-field">';
                                e += '	<label class="label-' + b + ' label-question">';
                                e += '		<input type="' + b + '" class="input-' + b + ' input-answer" name="answer" value="' + f.id + '" data-only="' + f.onlyState + '">';
                                e += "		<span></span>";
                                e += "	</label>";
                                e += '	<input id="content" type="text" class="input-text input-small input-full" data-only="' + f.onlyState + '" placeholder="' + f.title + '" maxlength="100">';
                                e += "	</div>"
                            }
                        } else {
                            e += '	<label class="label-' + b + ' label-question">';
                            e += '		<input type="' + b + '" class="input-' + b + ' input-answer" name="answer" value="' + f.id + '" data-only="' + f.onlyState + '">';
                            e += "		<span></span>";
                            e += "		" + f.title;
                            e += "	</label>"
                        }
                        e += "</li>";
                        return e
                    };
                </script>
               
            </div>
        </div>
		<form action="" method="post">
		
			<!-- 질문2 나이 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class="on"><span>기본정보</span></li>
								<li data="증상/불편"><span>증상/불편</span></li>
								<li data="생활 습관"><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 12%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 1</em>
								<h2 id="qTitle" maxallowed="1">
									<p>${loginMember.u_nickname}은 몇살이신가요?</p>
									<span class=""></span>
								</h2>
								<p id="qContent">나이에 따라 필요한 영양성분이 달라질 수 있어요.</p>
								<ul class="question-answer-wrap">
									<li>
										<div class="question-input-field" style="padding-left: 0;">
											<input type="radio" class="input-radio input-answer"
												name="answer" value="286" data-only="null" checked=""
												style="display: none;"> <input id="content"
												type="tel" class="input-text input-small input-full"
												placeholder="나이" maxlength="10" min="10" max="110"
												required="true">
										</div>
									</li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 질문3 키 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class=""><span>기본정보</span></li>
								<li data="증상/불편" class=""><span>증상/불편</span></li>
								<li data="생활 습관" class="on"><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 53%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 2</em>
								<h2 id="qTitle" maxallowed="1" class="">
									<p>${loginMember.u_nickname}님의 키를 적어주세요.</p>
									<span class=""></span>
								</h2>
								<p id="qContent">영양성분 추천에 체질량지수(BMI)를 활용합니다.</p>
								<ul class="question-answer-wrap">
									<li>
										<div class="question-input-field" style="padding-left: 0;">
											<input type="radio" class="input-radio input-answer"
												name="answer" value="350" data-only="1" checked=""
												style="display: none;"> <input id="content"
												type="tel" class="input-text input-small input-full"
												placeholder="키" maxlength="10" min="100" max="250"
												required="true"> <span class="unit">cm</span>
										</div>
									</li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 질문4 몸무게 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class=""><span>기본정보</span></li>
								<li data="증상/불편" class=""><span>증상/불편</span></li>
								<li data="생활 습관" class="on"><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 56%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 3</em>
								<h2 id="qTitle" maxallowed="1" class="">
									<p>${loginMember.u_nickname}님의 몸무게를 적어주세요.</p>
									<span class=""></span>
								</h2>
								<p id="qContent">영양성분 추천에 체질량지수(BMI)를 활용합니다.</p>
								<ul class="question-answer-wrap">
									<li>
										<div class="question-input-field" style="padding-left: 0;">
											<input type="radio" class="input-radio input-answer"
												name="answer" value="351" data-only="1" checked=""
												style="display: none;"> <input id="content"
												type="tel" class="input-text input-small input-full"
												placeholder="몸무게" maxlength="10" min="30" max="190"
												required="true"> <span class="unit">kg</span>
										</div>
									</li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 질문5 혈관/혈액순환 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class=""><span>기본정보</span></li>
								<li data="증상/불편" class="on"><span>증상/불편</span></li>
								<li data="생활 습관" class=""><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 40%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 4 &nbsp; | &nbsp; 혈관/혈액순환</em>
								<h2 id="qTitle" maxallowed="99" class="withicon">
									<p>${loginMember.u_nickname}님에게 해당하는 것을 모두 선택하세요.</p>
									<span class="icon icon-survey-question-blood"></span>
								</h2>
								<p id="qContent"></p>
								<ul class="question-answer-wrap">
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="306" data-only="null"> <span></span>
											상처가 생기면 잘 아물지 않아요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="307" data-only="null"> <span></span>
											손끝 또는 발끝이 자주 저려요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="309" data-only="null"> <span></span>
											충치가 생기고 잇몸이 자주 붓고 피가 나요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="310" data-only="1"> <span></span>
											선택할 것이 없지만 혈관/혈액순환이 걱정돼요.
									</label></li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 질문6 소화/장 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class=""><span>기본정보</span></li>
								<li data="증상/불편" class="on"><span>증상/불편</span></li>
								<li data="생활 습관" class=""><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 43%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 5 &nbsp; | &nbsp; 소화/장</em>
								<h2 id="qTitle" maxallowed="99" class="withicon">
									<p>${loginMember.u_nickname}님에게 해당하는 것을 모두 선택하세요.</p>
									<span class="icon icon-survey-question-digestion"></span>
								</h2>
								<p id="qContent"></p>
								<ul class="question-answer-wrap">
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="311" data-only="null"> <span></span>
											복통이나 속 쓰림이 자주 발생해요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="312" data-only="null"> <span></span>
											변비가 있어요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="464" data-only="null"> <span></span>
											설사와 같은 묽은 변을 자주 보는 편이에요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="313" data-only="null"> <span></span>
											술을 마실 때 얼굴이나 몸이 붉어지고 소화가 안돼요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="489" data-only="null"> <span></span>
											배뇨 후 소변이 남아있는 느낌(잔뇨감)이 있어요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="314" data-only="1"> <span></span>
											선택할 것이 없지만 소화력 개선이 필요해요.
									</label></li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 질문7 피로감 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class=""><span>기본정보</span></li>
								<li data="증상/불편" class="on"><span>증상/불편</span></li>
								<li data="생활 습관" class=""><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 31%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 6 &nbsp; | &nbsp; 피로감</em>
								<h2 id="qTitle" maxallowed="99" class="withicon">
									<p>${loginMember.u_nickname}님에게 해당하는 것을 모두 선택하세요.</p>
									<span class="icon icon-survey-question-fatigue"></span>
								</h2>
								<p id="qContent"></p>
								<ul class="question-answer-wrap">
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="330" data-only="null"> <span></span>
											무기력하고 식욕이 없어요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="331" data-only="null"> <span></span>
											자고 일어나도 아침부터 피곤해요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="332" data-only="null"> <span></span>
											신경이 예민하고 잠을 이루기 힘들어요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="333" data-only="null"> <span></span>
											잠을 매우 잘 자요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="490" data-only="null"> <span></span>
											잠을 자다가 소변을 보기 위해 잠에 깨는 경우가 잦아요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="334" data-only="1"> <span></span>
											선택할 것이 없지만 피로감이 있어요.
									</label></li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark">다음</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 질문8 면역 -->
			<div class="survey-contents">
				<div class="survey-contents-inner">
					<a href="#" class="close-survey"
						onclick="closeSurvey(''); return false;"><img
						src="/images/btn-gnb-close.png"
						srcset="/images/btn-gnb-close.png 1x, /images/btn-gnb-close@2x.png 2x, /images/btn-gnb-close@3x.png 3x, "
						alt="건강설문 닫기"></a>
					<div class="survey-test">
						<nav class="survey-test-header">
							<h2 class="only-sr">건강설문 단계</h2>
							<ul class="step-list-wrap">
								<li data="기본정보" class=""><span>기본정보</span></li>
								<li data="증상/불편" class="on"><span>증상/불편</span></li>
								<li data="생활 습관" class=""><span>생활 습관</span></li>
								<li data="기타"><span>기타</span></li>
							</ul>
						</nav>
						<div class="survey-progress">
							<div id="survey-progress-rate" style="width: 50%;"></div>
						</div>
						<div class="survey-question-contents">
							<h2 class="only-sr">건강설문 질문</h2>
							<section class="question-section">
								<em id="qNum">질문 7</em>
								<h2 id="qTitle" maxallowed="99" class="">
									<p>${loginMember.u_nickname}님에게 해당하는 것을 모두 선택하세요.</p>
									<span class=""></span>
								</h2>
								<p id="qContent"></p>
								<ul class="question-answer-wrap">
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="308" data-only="null"> <span></span>
											혈압이 높아요. (140/90 이상)
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="471" data-only="null"> <span></span>
											평소 더위를 타고, 땀을 많이 흘려요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="477" data-only="null"> <span></span>
											혈액 항응고제(와파린 등), 항혈전제(아스피린 등)를 복용하고 있습니다.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="478" data-only="null"> <span></span>
											꿀 또는 프로폴리스에 알레르기가 있어요.
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="483" data-only="null"> <span></span>
											혈압이 낮아요. (수축기 90 또는 이완기 60 이하)
									</label></li>
									<li><label class="label-checkbox label-question">
											<input type="checkbox" class="input-checkbox input-answer"
											name="answer" value="479" data-only="1"> <span></span>
											선택할 것이 없어요.
									</label></li>
								</ul>
							</section>
						</div>
						<div class="survey-errormsg"></div>
						<div class="survey-question-footer">
							<button id="btn-prev" class="btn btn-radius">이전</button>
							<button id="btn-next" class="btn btn-radius btn-dark" type="submit">다음</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</main>
    
    

    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="<%=request.getContextPath()%>/resources/js/theme.min.js"></script>
</body>

</html>