
function fmtNowTime(){
    function fmt(x){
        var ret = ''
        if (x<10)
            ret += '0';
        return ret+x;
    }
    var date = new Date();
    var year = date.getFullYear(),
        month = date.getMonth()+1,
        day = date.getDate(),
        hour = date.getHours(),
        min = date.getMinutes(),
        sec = date.getSeconds();
    return fmt(year)+fmt(month)+fmt(day)+fmt(hour)+fmt(min)+fmt(sec);
}

function RandN(n){
    var rnd="";
    for(var i=0;i<n;i++)
        rnd+=Math.floor(Math.random()*10);
    return rnd;
}

var now = new Date();
now.setTime(now.getTime() + 30*24*60*60*1000);
xhost=document.domain.split('.');
xL = xhost.length;
if (xL > 1){
    xdm = '.'+xhost[xL-2]+'.'+xhost[xL-1];
} else {
    xdm = document.domain;
}

var tid = encodeURIComponent(fmtNowTime()+'_'+RandN(7))
    +";expires="+now.toGMTString()+";path=/;domain="+xdm;
document.cookie = ( encodeURIComponent("__yjs_ab_id")+"="+tid );

try{
    var myXMLHttpRequest=new XMLHttpRequest();
    myXMLHttpRequest.open("GET", "/favicon.ico", true);
    myXMLHttpRequest.setRequestHeader('Cache-Control', 'no-cache');
    myXMLHttpRequest.send(null);
} finally {}

window.__abbaidu_20180315_lid_score_cb = function (lid, score) {
    document.cookie = (encodeURIComponent('__yjs_ab_lid') + '=' + encodeURIComponent(lid)+'_'+tid);
    document.cookie = (encodeURIComponent('__yjs_ab_score') + '=' + encodeURIComponent(score)+'_'+tid);

    try{
        var myXMLHttpRequest=new XMLHttpRequest();
        myXMLHttpRequest.open("GET", "/favicon.ico", true);
        myXMLHttpRequest.setRequestHeader('Cache-Control', 'no-cache');
        myXMLHttpRequest.send(null);
    } finally {}
};


(function(){function B(){function a(a){(new Image).src="https://anti-bot.baidu.com/abdr?data="+encodeURIComponent(R(JSON.stringify(a)))+"&_="+Math.random()}function g(){w||(w=f.f("anti-bot-df"+Math.random()+r["108"]+r["109"]+r["27"]+x));if(b.__abbaidu_20180315_cidcb)try{b.__abbaidu_20180315_cidcb(w)}catch(q){}}function d(c){g();var p=c.type,q=c.clientX+"",h=c.clientY+"",f=c.pageX+"",t=c.pageY+"";a:{var n=c.target;for(var m=[];n&&1===n.nodeType;n=n.parentNode){if(n.hasAttribute("id")){m.unshift('id("'+
n.getAttribute("id")+'")');n=m.join("/");break a}if(n.hasAttribute("class"))m.unshift(n.localName.toLowerCase()+'[@class="'+n.getAttribute("class")+'"]');else{for(var l=1,k=n.previousSibling;k;k=k.previousSibling)k.localName==n.localName&&l++;m.unshift(n.localName.toLowerCase()+"["+l+"]")}}n=m.length?"/"+m.join("/"):null}c={1:p,2:q,3:h,4:f,5:t,6:n,7:(new Date).getTime()+"",8:D+"",9:E+"",10:F+"",11:void 0===c.isTrusted?"2":c.isTrusted?"1":"0",12:"0",13:H+"",14:I+"",15:J+"",16:K+"",17:L+"",18:M+"",
19:(b.innerWidth||e.documentElement.clientWidth||e.body.clientWidth)+"x"+(b.innerHeight||e.documentElement.clientHeight||e.body.clientHeight),20:(new Date).getTime()-x+"",101:w,103:(new Date).getTime()+"",104:N,106:O,107:"12",108:e.URL,109:e.referrer,110:b.navigator.userAgent||"",200:"2"};e.removeEventListener("click",d,!0);a(c)}function p(a){var c=a.accelerationIncludingGravity;c&&(H=c.x||0,I=c.y||0,J=c.z||0);if(c=a.acceleration)D=c.x||0,E=c.y||0,F=c.z||0;if(a=a.rotationRate)K=a.alpha||0,L=a.beta||
0,M=a.gamma||0;0!==y||0===D&&0===E&&0===F||(y=(new Date).getTime());h(!1)}function h(c){if(!S){var d=!1;c||0===C||0===y||(d=!0);!c||0===C&&0===y||(d=!0);d&&(b.removeEventListener("devicemotion",p,!0),S=!0,g(),a({1:D+"",2:E+"",3:F+"",4:H+"",5:I+"",6:J+"",7:K+"",8:L+"",9:M+"",10:0!==y?y-x+"":"-1",11:T,12:0!==C?C-x+"":"-1",13:U,14:V,15:W,16:X,101:w,103:(new Date).getTime()+"",104:N,106:O,107:"12",108:e.URL,109:e.referrer,110:b.navigator.userAgent||"",200:"3"}))}}function c(){var a=new XMLHttpRequest;
a.open("POST","https://anti-bot.baidu.com/abdr",!0);a.withCredentials=!0;a.onreadystatechange=function(){if(4===this.readyState&&200===this.status){var a=this.responseText;if(-1!==a.indexOf("|")){var c=a.split("|");a=c[0];c=c[1]}try{b.localStorage&&b.localStorage.setItem("abbaidu_ls_key&^%",a)}catch(G){}if(b.__abbaidu_20180306_idcb)try{b.__abbaidu_20180306_idcb(a)}catch(G){}if(b.__abbaidu_20180315_scorecb)try{b.__abbaidu_20180315_scorecb(c)}catch(G){}if(b.__abbaidu_20180315_lid_score_cb)try{b.__abbaidu_20180315_lid_score_cb(a,
c)}catch(G){}}};a.send(R(JSON.stringify(r)))}var x=(new Date).getTime(),m="",k="",u="",t="";if(b.__abbaidu_20180315_zidgetf)try{m=b.__abbaidu_20180315_zidgetf()||""}catch(q){}if(b.__abbaidu_20180315_bidgetf)try{k=b.__abbaidu_20180315_bidgetf()||""}catch(q){}if(b.__abbaidu_20180315_subidgetf)try{u=b.__abbaidu_20180315_subidgetf()||""}catch(q){}if(b.__abbaidu_20180315_extra_datagetf)try{t=b.__abbaidu_20180315_extra_datagetf()||""}catch(q){}var v=Y()+"",ba=aa(!0,"antifraud",!1),ca=(b.screen.colorDepth||
"")+"",l=b.screen.width+"x"+b.screen.height,da=b.screen.availWidth+"x"+b.screen.availHeight,z=[b.screen.deviceXDPI||"",b.screen.G||""].join(),A=ea(),B=fa();try{var P=!!b.localStorage+0}catch(q){P=1}P+="";try{var Q=!!b.sessionStorage+0}catch(q){Q=1}Q+="";var ha=(b.navigator.cookieEnabled||"")+"",ia=(new Date).getTimezoneOffset()+"",ja=b.navigator.language||"",ka=b.navigator.L||"",ma=la(),na=(b.devicePixelRatio||"")+"",oa=(b.navigator.hardwareConcurrency||"")+"",qa=pa()+"",ra=b.navigator.i||b.navigator.K||
b.window.i||"",ta=sa(),va=ua();try{var Z=!!b.indexedDB+0}catch(q){Z=1}var r={1:v,3:ba,4:ca,5:l,6:da,7:z,8:A,9:B,11:P,12:Q,13:ha,14:ia,15:ja,16:ka,17:ma,18:na,19:oa,20:qa,21:ra,22:ta,23:va,24:Z+"",27:b.navigator.userAgent||"",28:[!!e.getBoxObjectFor,!!b.opera].join(),29:["undefined"===typeof b.eval.prototype,"eval"===b.eval.name,-1!=b.eval.toString().indexOf("native")].join(),32:"0",34:b.navigator.platform||"",35:[!!(b.navigator.D||b.navigator.I||b.navigator.M),!!b.navigator.getBattery].join(),101:"",
103:(new Date).getTime()+"",104:"",106:"",107:"12",108:e.URL,109:e.referrer,110:"",112:m,113:k,114:u,115:t,200:"1"};r["32"]=""+((new Date).getTime()-x);var R=b.btoa||function(a){return(new wa).encode(a)},H=0,I=0,J=0,D=0,E=0,F=0,K=0,L=0,M=0,T="",y=0,C=0,S=!1,U="",V="",W="",X="",w="",O="",N="";this.o=function(){g();O="2008";N="";r["106"]="2008";r["104"]="";r["101"]=w;try{r["110"]=b.localStorage.getItem("abbaidu_ls_key&^%")||""}catch(q){}if(b.navigator.getBattery)try{b.navigator.getBattery().then(function(a){try{U=
""+a.charging,V=""+a.chargingTime,W=""+a.dischargingTime,X=""+a.level}catch(ya){}})}catch(q){}c();xa(function(a){a&&(T=a,C=(new Date).getTime(),h(!1))});b.addEventListener("devicemotion",p,!0);e.addEventListener("click",d,!0);setTimeout(function(){h(!0)},2E3)}}function v(){"interactive"!==e.readyState&&"complete"!==e.readyState||z||(z=!0,(new B).o())}function xa(a){try{(new Promise(function(g){try{var d=function(a){if(a=e.exec(a))a=a[1],"0.0.0.0"!==a&&(void 0===c[a]&&h.push(a),c[a]=!0)},p=b.RTCPeerConnection||
b.J||b.webkitRTCPeerConnection;if(p){var h=[],c={},f=new p({iceServers:[{urls:"stun:stun.services.mozilla.com"}]},{optional:[{RtpDataChannels:!0}]}),e=/([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/;f.onicecandidate=function(a){a.candidate&&d(a.candidate.candidate)};f.createDataChannel("");f.createOffer(function(a){f.setLocalDescription(a,function(){},function(){})},function(){});var k=0,u=setInterval(function(){try{if(f.localDescription.sdp.split("\n").forEach(function(a){0!==a.indexOf("a=candidate:")&&
0!==a.indexOf("c=IN")||d(a)}),0<h.length||2<++k)g(h.join(",")),clearInterval(u)}catch(t){g(h.join(",")),clearInterval(u)}},1E3)}else g("")}catch(t){a("")}})).then(function(g){a(g)})}catch(g){a(null)}}function ua(){var a=0,g=0;"undefined"!==typeof navigator.maxTouchPoints?a=navigator.maxTouchPoints:"undefined"!==typeof navigator.msMaxTouchPoints&&(a=navigator.msMaxTouchPoints);try{e.createEvent("TouchEvent"),g=1}catch(d){}return[a,g,!!("ontouchstart"in b)+0].join()}function sa(){var a=b.navigator;
return[a.product,a.productSub,a.vendor,a.vendorSub,a.appCodeName,a.appName,a.platform,eval.toString().length,a.F||""].join()}function Y(){var a=e.createElement("canvas");try{return!(!a.getContext||!a.getContext("2d"))+0}catch(g){return 0}}function aa(a,g,d){if(!Y())return"";var b=[],h=e.createElement("canvas");h.width=2E3;h.height=200;h.style.display="inline";var c=h.getContext("2d");if(d)try{c.lineWidth=1,c.lineCap="butt",c.lineJoin="miter",c.miterLimit=10,c.lineDashOffset=0,c.textAlign="start",
c.textBaseline="alphabetic",c.direction="inherit",c.strokeStyle="#000",c.shadowBlur=0,c.shadowColor=0,c.shadowOffsetX=0,c.shadowOffsetY=0,c.globalAlpha=1,c.H=!0}catch(x){}c.rect(0,0,10,10);c.rect(2,2,6,6);c.isPointInPath&&b.push("canvas winding:"+(!1===c.isPointInPath(5,5,"evenodd")?"yes":"no"));c.textBaseline="alphabetic";c.fillStyle="#f60";c.fillRect(125,1,62,20);c.fillStyle="#069";c.font="11pt Arial";c.fillText(g,2,15);c.fillStyle="rgba(102, 204, 0, 0.2)";c.font="18pt Arial";c.fillText(g,4,45);
a&&(c.globalCompositeOperation="multiply");c.fillStyle="rgb(255,0,255)";c.beginPath();c.arc(50,50,50,0,2*Math.PI,!0);c.closePath();c.fill();c.fillStyle="rgb(0,255,255)";c.beginPath();c.arc(100,50,50,0,2*Math.PI,!0);c.closePath();c.fill();c.fillStyle="rgb(255,255,0)";c.beginPath();c.arc(75,100,50,0,2*Math.PI,!0);c.closePath();c.fill();c.fillStyle="rgb(255,0,255)";c.arc(75,75,75,0,2*Math.PI,!0);c.arc(75,75,25,0,2*Math.PI,!0);c.fill("evenodd");b.push("canvas fp:"+h.toDataURL());return f.f(b.join("~"))}
function ea(){for(var a="",g=b.navigator.plugins,d=0;d<g.length;d++)a=d===g.length-1?a+encodeURIComponent(g[d].name):a+(encodeURIComponent(g[d].name)+",");return a}function fa(){for(var a="",g=b.navigator.mimeTypes,d=0;d<g.length;d++)a=d===g.length-1?a+encodeURIComponent(g[d].description):a+(encodeURIComponent(g[d].description)+",");return a}function la(){function a(a,b){return a.canPlayType(b).replace(/^no$/,"0").replace(/^probably$/,"1").replace(/^maybe$/,"1")}var b=e.createElement("video"),d=!1;
try{if(d=!!b.canPlayType)d=new Boolean(d),d.s=a(b,'video/ogg; codecs="theora"'),d.j=a(b,'video/mp4; codecs="avc1.42E01E"'),d.B=a(b,'video/webm; codecs="vp8, vorbis"'),d.A=a(b,'video/webm; codecs="vp9"'),d.m=a(b,'application/x-mpegURL; codecs="avc1.42E01E"')}catch(p){}return[!!d+0,d.s||"0",d.j||"0",d.B||"0",d.A||"0",d.m||"0"].join()}function pa(){var a=e.createElement("div");a.innerHTML="&nbsp;";a.className="adsbox";var b=!1;try{e.body.appendChild(a),b=(0===e.getElementsByClassName("adsbox")[0].offsetHeight)+
0,e.body.removeChild(a)}catch(d){b=!1}return b}function wa(){this.encode=function(a){var b="",d,p=0;a=a.replace(/\r\n/g,"\n");var h="";for(d=0;d<a.length;d++){var c=a.charCodeAt(d);128>c?h+=String.fromCharCode(c):(127<c&&2048>c?h+=String.fromCharCode(c>>6|192):(h+=String.fromCharCode(c>>12|224),h+=String.fromCharCode(c>>6&63|128)),h+=String.fromCharCode(c&63|128))}for(a=h;p<a.length;){var f=a.charCodeAt(p++);h=a.charCodeAt(p++);d=a.charCodeAt(p++);c=f>>2;f=(f&3)<<4|h>>4;var e=(h&15)<<2|d>>6;var k=
d&63;isNaN(h)?e=k=64:isNaN(d)&&(k=64);b=b+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(c)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(f)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(e)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(k)}return b}}var b=window,e=b.document;b.__abbaidu_20180306_idagetterf=function(){return b.localStorage.getItem("abbaidu_ls_key&^%")||""};var f={l:0,C:"",
b:8,f:function(a){return f.g(f.h(f.w(a),a.length*f.b))},h:function(a,b){a[b>>5]|=128<<24-b%32;a[15+(b+64>>9<<4)]=b;for(var d=Array(80),g=1732584193,h=-271733879,c=-1732584194,e=271733878,m=-1009589776,k=0;k<a.length;k+=16){for(var u=g,t=h,v=c,z=e,A=m,l=0;80>l;l++){d[l]=16>l?a[k+l]:f.c(d[l-3]^d[l-8]^d[l-14]^d[l-16],1);var B=f.a(f.a(f.c(g,5),f.u(l,h,c,e)),f.a(f.a(m,d[l]),f.v(l)));m=e;e=c;c=f.c(h,30);h=g;g=B}g=f.a(g,u);h=f.a(h,t);c=f.a(c,v);e=f.a(e,z);m=f.a(m,A)}return[g,h,c,e,m]},u:function(a,b,d,f){return 20>
a?b&d|~b&f:40>a?b^d^f:60>a?b&d|b&f|d&f:b^d^f},v:function(a){return 20>a?1518500249:40>a?1859775393:60>a?-1894007588:-899497514},a:function(a,b){var d=(65535&a)+(65535&b);return(a>>16)+(b>>16)+(d>>16)<<16|65535&d},c:function(a,b){return a<<b|a>>>32-b},w:function(a){for(var b=[],d=(1<<f.b)-1,e=0;e<a.length*f.b;e+=f.b)b[e>>5]|=(a.charCodeAt(e/f.b)&d)<<24-e%32;return b},g:function(a){for(var b=f.l?"0123456789ABCDEF":"0123456789abcdef",d="",e=0;e<4*a.length;e++)d+=b.charAt(a[e>>2]>>8*(3-e%4)+4&15)+b.charAt(a[e>>
2]>>8*(3-e%4)&15);return d}},z=!1;b.addEventListener("load",function(){v()},!0);var A=e.onreadystatechange;e.onreadystatechange=function(){v();if(A)try{A()}catch(a){}};v()})();