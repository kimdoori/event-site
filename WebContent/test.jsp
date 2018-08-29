<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/test.css">
<script src="js/resultPage.js"></script>
</head>
<body>
<div class="container">
  <svg class="glassSVG" viewBox="0 0 600 600">
    <defs>
      <clipPath id="liquidMask">
        <polygon class="liquidMask" fill="#FFFFFF" points="218,225 381,225 345,441 255,441 " />
      </clipPath>
      <symbol id="fizz">
        <rect x="0" y="0" fill="#FF74CB" width="8" height="8" />
      </symbol>
    </defs>

    <path class="lemon" fill="#FFFF3F" stroke="#343434" stroke-width="16" stroke-miterlimit="10" d="M439,225c0,32-26,58-58,58
	c-3.3,0-6.4-0.3-9.5-0.8L381,225h-58c0-32,26-58,58-58S439,193,439,225z" />
    <polygon class="drinkLiquid" clip-path="url(#liquidMask)" fill="#FF74CB" points="218,225 381,225 345,441 255,441 " />


    <line class="pour" fill="none" stroke="#FF74CB" stroke-width="16" stroke-linecap="none" stroke-miterlimit="10" x1="313" y1="433" x2="313" y2="113" />

    <use xlink:href="#fizz" class="fizzUp" x="220" y="190" />
    <use xlink:href="#fizz" class="fizzDown" x="240" y="200" />
    <use xlink:href="#fizz" class="fizzUp" x="260" y="190" />
    <use xlink:href="#fizz" class="fizzDown" x="280" y="200" />
    <use xlink:href="#fizz" class="fizzUp" x="300" y="190" />
    <use xlink:href="#fizz" class="fizzDown" x="320" y="200" />
    <use xlink:href="#fizz" class="fizzUp" x="340" y="190" />
    <use xlink:href="#fizz" class="fizzDown" x="360" y="200" />

    <polyline class="emptyStraw" fill="none" stroke="#343434" stroke-width="16" stroke-miterlimit="10" points="273,225 255,154 
	218,154 " />
    <polyline class="fullStraw" fill="none" stroke="#FF74CB" stroke-width="16" stroke-miterlimit="10" points="273,225 255,154 
	218,154 " />
    <polygon class="glass" fill="none" stroke="#343434" stroke-width="16" stroke-miterlimit="10" points="218,225 381,225 345,441 
	255,441 " />
  </svg>


  <svg class="pitcherSVG" width="600" height="600" viewBox="0 0 600 600">
    <defs>
      <clipPath id="pitcherLiquidMask">
        <polygon class="pitcherLiquidMask" fill="#FFFFFF" points="175.7,146 392,146 392,427 211,427 211,194.7 " />
      </clipPath>
    </defs>
    <rect class="pitcherLiquid" clip-path="url(#pitcherLiquidMask)" x="0" y="180" fill="#FF74CB" width="600" height="600" />

    <g class="pitcherGroup">
      <polygon class="pitcher" fill="none" stroke="#343434" stroke-width="16" stroke-linecap="round" stroke-miterlimit="10" points="
		175.7,146 392,146 392,427 211,427 211,194.7 	" />
      <path class="pitcherHandle" fill="none" stroke="#343434" stroke-width="16" stroke-miterlimit="10" d="M391.6,146.1
		c37,0,67,30,67,67s-30,67-67,67" />
    </g>


  </svg>


</div>

</body>
</html>