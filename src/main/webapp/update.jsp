<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <title>VK API Parser (JAVA)</title>

  <style>
    body {
      background: #172135;
      font-size: 24px;
      color: #ffffff;
      font-family: sans-serif;
    }
  </style>

  <style type="text/css">
    
    @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css');
    .button {
      color: #fff;
      cursor: pointer;
      padding: 1rem 3rem;
      user-select: none;
      position: relative;
      border-radius: 4px;
      background-color: #1b263d;
    }
    .button:hover {
      background-color: #222c42;
    }
    .button:active,
    .button:focus {
      background-color: #222c42;
    }
    .button::before {
      left: 0;
      z-index: 2;
      opacity: 0;
      width: 100%;
      visibility: hidden;
      text-align: center;
      position: absolute;
      content: "\f110";
      transition: opacity 1s;
      font-family: FontAwesome;
      animation: loading-animation 1s linear;
      animation-iteration-count: infinite;
      animation-delay: 1s;
    }
    .button::after {
      top: 0;
      left: 0;
      opacity: 0;
      z-index: 1;
      content: "";
      width: 100%;
      height: 100%;
      visibility: hidden;
      position: absolute;
      transition: opacity 0.5s;
      border-radius: 4px;
      background-color: #1b263d;
    }
    .button-controller {
      display: none;
    }
    .button-controller:checked ~ .button::before,
    .button-controller:checked ~ .button::after {
      opacity: 1;
      visibility: visible;
    }
    @-moz-keyframes loading-animation {
      0% {
        opacity: 1;
        transform: rotate(0deg);
      }
      50% {
        opacity: 0.1;
      }
      80% {
        opacity: 1;
      }
      100% {
        transform: rotate(359deg);
      }
    }
    @-webkit-keyframes loading-animation {
      0% {
        opacity: 1;
        transform: rotate(0deg);
      }
      50% {
        opacity: 0.1;
      }
      80% {
        opacity: 1;
      }
      100% {
        transform: rotate(359deg);
      }
    }
    @-o-keyframes loading-animation {
      0% {
        opacity: 1;
        transform: rotate(0deg);
      }
      50% {
        opacity: 0.1;
      }
      80% {
        opacity: 1;
      }
      100% {
        transform: rotate(359deg);
      }
    }
    @keyframes loading-animation {
      0% {
        opacity: 1;
        transform: rotate(0deg);
      }
      50% {
        opacity: 0.1;
      }
      80% {
        opacity: 1;
      }
      100% {
        transform: rotate(359deg);
      }
    }
  </style>
</head>
<body>
  <form align="center" id="form" method="post" action="app?action=submit" onkeydown="if(event.keyCode == 13) event.preventDefault();">
    ID:<input type="number" name="id" value="${user.id}" placeholder="${user.id}"/>
    <p></p>
    <input class="button-controller" id="button" type="checkbox" onclick="document.querySelector('#warn').style='initial';document.querySelector('#form').submit();">

    <label tabindex="0" for="button" class="button">
      Начать
    </label>
    <!--<button type="checkbox" onclick="document.querySelector('#warn').style='initial';">Начать</button>-->
    <div id="warn" style="display:none">
      <br>
      <br>
      <br>
      Подождите немного пока данные загружаются!
      <br>Это может занять несколько минут
    </div>
  </form>
</body>
</html>