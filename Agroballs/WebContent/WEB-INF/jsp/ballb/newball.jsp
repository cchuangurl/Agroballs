<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- source
www.sucaihuo.com/js/3231.html
-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>css水晶球雪花动画</title>

<style>
body {
  background-color: #d6d6d3;
  height: 100vh;
  width: 100vw;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  margin: 0;
}

#c1,#c2 {
  position: absolute;
  top: 0;
  left: 0;
  height: 600px;
  width: 600px;
  border-radius: 50%;
}

#c1 {
  z-index: -11;
}
#c2 {
  z-index: 1000;
}

.container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  position: relative;
}

.snowglobe {
  height: 600px;
  width: 600px;
  border-radius: 50%;
  background-color: #dadee8;
  border: 2px solid #cad0de;
  z-index: -30;
}

.snowglobe:before {
  position: absolute;
  content: "";
  height: 560px;
  width: 560px;
  border-radius: 50%;
  top: 20px;
  left: 20px;
  background: #fff;
}

.snowglobe:after {
  position: absolute;
  content: "";
  height: 560px;
  width: 580px;
  border-radius: 50%;
  top: 34px;
  background: #dadee8;
}

.base {
  position: relative;
  border-bottom: 100px solid #534f54;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  height: 0;
  width: 484px;
  margin-top: -120px;
  z-index: -10;
  -ms-flex-item-align: center;
      -ms-grid-row-align: center;
      align-self: center;
}

.base:after {
  position: absolute;
  content: "";
  top: 50px;
  left: -20px;
  width: 524px;
  height: 100px;
  border-radius: 250px / 50px;
  background: #534f54;
}

.baseTop {
  background-color: #fff;
  width: 484px;
  height: 80px;
  border-radius: 250px / 40px;
  margin-top: -144px;
  box-sizing: border-box;
  border-bottom: 16px solid #dadee8;
  z-index: -10;
  -ms-flex-item-align: center;
      -ms-grid-row-align: center;
      align-self: center;
}

.baseShadow {
  position: absolute;
  background-color: #a1a6b1;
  width: 550px;
  height: 120px;
  border-radius: 260px / 60px;
  top: 540px;
  z-index: -40;
  -ms-flex-item-align: center;
      -ms-grid-row-align: center;
      align-self: center;
}

.tree {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-bottom: 70px solid #8caba1;
  margin-top: 67px;
  margin-left: -80px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.tree:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 20px solid transparent;
  border-bottom: 70px solid #7e9990;
}

.tree4 {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 30px solid transparent;
  border-right: 30px solid transparent;
  border-bottom: 100px solid #516463;
  margin-top: 65px;
  margin-left: -50px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.tree4:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 30px solid transparent;
  border-bottom: 100px solid #5a706e;
}

.tree2 {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  border-bottom: 70px solid #5a706e;
  margin-top: 67px;
  margin-left: 70px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.tree2:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 20px solid transparent;
  border-bottom: 70px solid #516463;
}

.tree3 {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-bottom: 80px solid #7e9990;
  margin-top: 69px;
  margin-left: -20px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.tree3:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 20px solid transparent;
  border-bottom: 80px solid #8caba1;
}

.roof {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 50px solid transparent;
  border-right: 50px solid transparent;
  border-bottom: 31.25px solid #ba616d;
  margin-top: 58px;
  margin-left: 30px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.cabin {
  position: absolute;
  background: #534f54;
  display: inline-block;
  height: 40px;
  margin-top: 93px;
  margin-left: 30px;
  width: 80px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.cabin:before {
  border-bottom: 25px solid #534f54;
  border-left: 40px solid transparent;
  border-right: 40px solid transparent;
  content: "";
  height: 0;
  left: 0;
  position: absolute;
  top: -25px;
  width: 0;
}
</style>
</head>
<body>
<div class="container">
  <canvas id="c1"></canvas>
  <canvas id="c2"></canvas>
  <div class="snowglobe"></div>
  <div class="highlight"></div>
  <div class="base"></div>
  <div class="baseTop"></div>
  <div class="baseShadow"></div>
  <div class="tree"></div>
  <div class="tree2"></div>
  <div class="tree3"></div>
  <div class="tree4"></div>
  <div class="roof"></div>
  <div class="cabin"></div>
</div>

<script type="text/javascript">
(function() {
  var c1 = document.getElementById("c1");
  var c2 = document.getElementById("c2");
  var ctx1 = c1.getContext("2d");
  var ctx2 = c2.getContext("2d");
  c1.height = 600;
  c1.width = 600;
  c2.height = 600;
  c2.width = 600;

  ctx1.fillStyle = "white";
  ctx2.fillStyle = "white";
  /*
  var c1Flakes = [];
  var c2Flakes = [];

  function Flake(r) {
    this.x = Math.random() * 300;
    this.y = Math.random() * 250;
    this.r = r;
  }

  for (var i = 0; i <= 80; i++) {
    var flake = new Flake(2);
    c1Flakes.push(flake);
  }

  for (var i = 0; i <= 80; i++) {
    var flake = new Flake(3);
    c2Flakes.push(flake);
  }

  function render() {
    ctx1.clearRect(0, 0, 300, 300);
    ctx2.clearRect(0, 0, 300, 300);
    for (var i = 0; i < c1Flakes.length; i++) {
      ctx1.beginPath();
      ctx1.arc(c1Flakes[i].x, c1Flakes[i].y, c1Flakes[i].r, 0, Math.PI * 2);
      ctx1.fill();
      if (c1Flakes[i].y <= 245){
      c1Flakes[i].y+= .3;
      }
      else{
        c1Flakes[i].y = 0;
      }
    }

    for (var i = 0; i < c2Flakes.length; i++) {
      ctx2.beginPath();
      ctx2.arc(c2Flakes[i].x, c2Flakes[i].y, c2Flakes[i].r, 0, Math.PI * 2);
      ctx2.fill();
      if (c2Flakes[i].y <= 245){
      c2Flakes[i].y += .6;
      }
      else{
        c2Flakes[i].y = 0;
      }
    }
    requestAnimationFrame(render);
  }
  render();
  */
})();
</script>
<footer>
 <div id="result"></div>
<c:url var="saveUrl0" value="/ballb/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</footer>
</body>
</html>
