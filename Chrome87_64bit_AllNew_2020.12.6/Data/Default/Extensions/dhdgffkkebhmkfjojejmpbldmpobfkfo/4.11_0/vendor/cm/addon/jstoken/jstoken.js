(function(b){"object"==typeof exports&&"object"==typeof module?b(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],b):b(CodeMirror)})(function(b){b.defineOption("specifyMoreJsTokens",!1,function(l,m,e){e==b.Init&&(e=!1);e&&!m?l.removeOverlay("jstoken"):!e&&m&&l.addOverlay({token:function(a){var g={"js-function-def":/(["']{1,1}[^\r\n\t'"]*["']{1,1}[\s\t\r\n]*:|[$a-zA-Z_0-9]+[\s\t\r\n]*:|[a-zA-Z_0-9]+[\s\t\r\n]*=)?[\s\t\r\n]*function[\s\t\r\n]*([$a-zA-Z_0-9]*)[\s\t\r\n]*\([\s\t\r\n]*([a-zA-Z_0-9,$\s\r\n\t]*)[\s\t\r\n]*\)/g,
"js-var":/var /g,"js-well-known":/window|document|Math|Number|String|Object|Array/g,"global-property":/eval|alert|prompt|confirm/g},c,f=a.string.length,h=Object.keys(g),d=f;for(c=0;c<h.length;c++)if(g[h[c]].lastIndex=a.pos,(p=g[h[c]].exec(a.string))&&p.index<d){d=p.index;var k=c;var n=p[0].length;if(p.index==a.pos)break}if(d==f)a.skipToEnd();else{if(d==a.pos)return a.pos+=n||1,h[k];a.pos=d}},name:"jstoken"})})});
(function(b){"object"==typeof exports&&"object"==typeof module?b(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],b):b(CodeMirror)})(function(b){b.defineOption("specifyMoreJsTokens",!1,function(l,m,e){e==b.Init&&(e=!1);e&&!m?l.removeOverlay("jstoken"):!e&&m&&l.addOverlay({token:function(a){var g={"js-function-def":/(["']{1,1}[^\r\n\t'"]*["']{1,1}[\s\t\r\n]*:|[$a-zA-Z_0-9]+[\s\t\r\n]*:|[a-zA-Z_0-9]+[\s\t\r\n]*=)?[\s\t\r\n]*function[\s\t\r\n]*([$a-zA-Z_0-9]*)[\s\t\r\n]*\([\s\t\r\n]*([a-zA-Z_0-9,$\s\r\n\t]*)[\s\t\r\n]*\)/g,
"js-var":/var /g,"js-well-known":/window|document|Math|Number|String|Object|Array/g,"global-property":/eval|alert|prompt|confirm/g},c,f,h=a.string.length,d=Object.keys(g),k=h;for(f=0;f<d.length;f++)if(g[d[f]].lastIndex=a.pos,(c=g[d[f]].exec(a.string))&&c.index<k){k=c.index;var n=f;var q=c[0].length;if(c.index==a.pos)break}if(k==h)a.skipToEnd();else{if(k==a.pos)return a.pos+=q||1,d[n];a.pos=k}},name:"jstoken"})})});
