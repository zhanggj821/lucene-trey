<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inspiration for Search UI Effects | Demo 6 | Codrops</title>
    <link href="https://fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="content/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="content/css/style6.css" />
    <!--[if IE]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.js"></script>
    <![endif]--><script>document.documentElement.className = 'js';</script>
</head>
<body class="demo-6">
<svg class="hidden">
    <defs>
        <symbol id="icon-arrow" viewBox="0 0 24 24">
            <title>arrow</title>
            <polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
        </symbol>
        <symbol id="icon-drop" viewBox="0 0 24 24">
            <title>drop</title>
            <path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
        </symbol>
        <symbol id="icon-search" viewBox="0 0 24 24">
            <title>search</title>
            <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
        </symbol>
        <symbol id="icon-cross" viewBox="0 0 24 24">
            <title>cross</title>
            <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/>
        </symbol>
    </defs>
</svg>
<main class="main-wrap">
    <header class="codrops-header">
        <div class="codrops-links">
            <a class="codrops-icon codrops-icon--prev" href="http://www.htmleaf.com/css3/ui-design/201702104345.html" title="返回下载页"><svg class="icon icon--arrow"><use xlink:href="#icon-arrow"></use></svg></a>
            <a class="codrops-icon codrops-icon--drop" href="http://www.htmleaf.com/" title="jQuery之家"><svg class="icon icon--drop"><use xlink:href="#icon-drop"></use></svg></a>
        </div>
        <h1 class="codrops-header__title">Inpiration for Search UI Effects</h1>
        <div class="search-wrap">
            <button id="btn-search" class="btn btn--search"><svg class="icon icon--search"><use xlink:href="#icon-search"></use></svg></button>
        </div>
    </header>
    <div class="bottom-nav">
        <nav class="codrops-demos">
            <span>More demos: </span>
            <a href="index.html">1</a>
            <a href="index2.html">2</a>
            <a href="index3.html">3</a>
            <a href="index4.html">4</a>
            <a href="index5.html">5</a>
            <a class="current-demo" href="index6.html">6</a>
            <a href="index7.html">7</a>
            <a href="index8.html">8</a>
            <a href="index9.html">9</a>
            <a href="index10.html">10</a>
            <a href="index11.html">11</a>
        </nav>
    </div>
    <div class="search">
        <form class="search__form" action="lucene_search.action" method="post">
            <li class="l_tit">检索关键词</li>
            <li><input class="search__input" name="keyword" type="text" placeholder="Find..." autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" /></li>
            <li><input type="submit" value="检索" class="login_btn"></li>
            <span class="search__info">Hit enter to search or ESC to close</span>
        </form>
        <div class="search__related">
            <div class="search__suggestion">
                <h3>May We Suggest?</h3>
                <p>界面美化是不可能了，这辈子都不可能。只能呆呆地望着丑不拉几的界面，暗暗神伤。你要检索就检索吧，我速度很慢很不准出了事情我不负责的哈哈哈=-=。---Trey</p>
            </div>
        </div>
    </div><!-- /search -->
    <button id="btn-search-close" class="btn btn--hidden btn--search-close" aria-label="Close search form"><svg class="icon icon--cross"><use xlink:href="#icon-cross"></use></svg></button>
</main><!-- /main-wrap -->
<script src="content/js/demo6.js"></script>
</body>
</html>