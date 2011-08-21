/*1313386166,176820406*/

if (window.CavalryLogger) { CavalryLogger.start_js(["5JvDT"]); }

(function(){var a='facebook.kiwiplugin';FbDesktopDetect={mimeType:'application/x-facebook-kiwi-1',isPluginInstalled:function(){var f=null;if(window.ActiveXObject){try{f=new ActiveXObject(a);if(f)return true;}catch(b){}}else if(navigator.plugins){navigator.plugins.refresh(false);for(var c=0,d=navigator.plugins.length;c<d;c++){f=navigator.plugins[c];var e=f[0];if(e&&e.type===this.mimeType)return true;}}return false;}};})();