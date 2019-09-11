

$(document).ready(function(){
  $("#minus-btn").click(function(){
    $("#num-product").val(Number($("#num-product").val())-1)
    if( $("#num-product").val()<=1){
            $("#minus-btn").attr("disabled",true)
            }
  });
});

$(document).ready(function(){
  $("#plus-btn").click(function(){
    $("#num-product").val(Number($("#num-product").val())+1)
        if( $("#num-product").val()>1){
            $("#minus-btn").attr("disabled",false)
        }
  });
});


$(document).ready(function(){
  if($("#num-product").val()<=1){
            $("#minus-btn").attr("disabled",true);
        };
      });
    
    



$(document).ready(function(){
  $(".owl-carousel").owlCarousel({
    stagePadding:50,
    items:3,
    margin:10,
    nav:true,
    responsiveRefreshRate:200,
    autoplay:true
  });
});




$(document).ready(function(){
    $.getJSON("test.json",function(data){
        let jsonData = data;
    })
});


$(document).ready(function(){
            $("#plus-btn").click(function{
            $("#itemname").html(jsonData.itemname);
            $("#itemnumber").html(jsonData.itemnumber);
            $("#itemdiscription").html(jsonData.itemdiscription);
            $("#itemimage").attr("src","imgs/water.jpg");
    })
});










//this is a test part

var isMoveFocus = false,
       focusElement = null,
       magnifierElement = null,
       focusZindex = 100,
       magnifierScale  = 0,
       magnifierZindex = 101,
       eMagnifierMages = null,
       magnifierWidth=800,
 
 
       focusArea = {
           "width" : 50,
           "height" : 50
       };
 
       setCss = function (_this, cssOption) {
           //设置指定节点css样式
           if(!_this || _this.nodeType === 3 || _this.nodeType === 8 || !_this.style){
               return;
           }
           for(var cs in cssOption){
               _this.style[cs] = cssOption[cs];
           }
           return _this;
       },
       initMagnifierMages = function (_e) {
           focusElement = setCss(document.getElementById("focusPoint"),{
               "z-index":focusZindex,
               "width" : focusArea.width,
               "height" : focusArea.height,
               "border":"2px solid red"
           });
           initMagnifierPos(_e);
           magnifierScale = magnifierWidth / _e.offsetWidth;
           var _img = _e.getAttribute("data-maxImg");
           document.getElementById("magnifierImg").setAttribute("src",_img);
       },
 
       mouseMagnifier = function (_e) {
           this.initMagnifierMages(_e);
           this.eMagnifierMages = _e;
       },
 
       _mousepos = {
           "top" : 0,
           "left" : 0
       }
 
       getMousePoint = function (_e) {
           //计算鼠标所在的位置
           var _body = document.body,
               _left = 0,
               _top = 0;
           //浏览器兼容
           if(typeof  window.pageYOffset != 'undefined'){
               _left = window.pageXOffset;
               _top = window.pageYOffset;
           }
           else if(typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat'){
               _left = document.documentElement.scrollLeft;
               _top = document.documentElement.scrollTop;
           }
           else if(typeof _body != 'undefined'){
               _left = _body.scrollLeft;
               _top = _body.scrollTop;
           }
 
           _left += _e.clientX;
           _top += _e.clientY;
           _mousepos.left = _left;
           _mousepos.top = _top;
 
           return _mousepos;
       },
 
       pointCheck = function (_event, _e, options) {
           //检测鼠标是否在图片内
           var _pos = getMousePoint(event),
               _w = options && options.width || _e.offsetWidth,
               _h = options && options.height || _e.offsetHeight,
               _left = getAbsoluteLeft(_e),
               _top = getAbsoluteTop(_e);
           _pos.left += options && options.left || 0;
           if(_pos.left < (_left + _w) && _left < _pos.left && _pos.top > _top && _pos.top < (_top + _h)){
               return true;
           }
 
           return false;
       },
 
       bodyMagnifiermousemove = function (event) {
      
           var _event =  _event || window.event,
               _e = eMagnifierMages;
           if(pointCheck(_event, _e)){
               isMoveFocus = true;
               focusStatus();
               if(!isMoveFocus) return;
               focusPos(_e, _event);
               magnifierPos(_e, _event);
           }else{
               isMoveFocus = false;
               focusStatus();
           }
       };
 
       focusPos = function (_e, _event) {
           //计算放大图片的位置
           var _pos = getMousePoint(_event),
               _top = _pos.top - focusArea.height / 2,
               _left = _pos.left - focusArea.width / 2;
           setCss(focusElement,{
               "top" : _top+"px",
               "left" : _left+"px",
               "display" : "block",
               "border":"2px solid blue"
           })
       },
 
       focusStatus = function () {
           isMoveFocus &&
               (setCss(focusElement,{
                   "display" : "block"
               }) && setCss(magnifierElement, {
                   "display" : "block"
               }) || setCss(focusElement,{
                  "display" : "none"
               }) && setCss(magnifierElement, {
                   "display" : "none"
               }));
       },
 
       initMagnifierPos = function (_e) {
           magnifierElement = setCss(document.getElementById("magnifier"),{
               "z_index" : magnifierZindex,
               "top" : getAbsoluteTop(_e),
               "left" : getAbsoluteLeft(_e) + _e.offsetWidth + focusArea.width
           });
       },
 
       magnifierPos = function (_e, _event) {
           //改变图片的left,top值,起到放大的作用
           var _pos = getMousePoint(_event),
               _top = magnifierScale * (_pos.top - getAbsoluteTop(_e) - focusArea.height / 2),
               _left = magnifierScale * (_pos.left - getAbsoluteLeft(_e) - focusArea.width / 2);
           if(_top < 0 || _left < 0) return;
           var ima=document.getElementById("magnifilerImg");
           setCss(ima,{
               "top" : "-"+_top+"px",
               "left" :"-"+_left+"px",
           });
       },
 
       getAbsoluteLeft = function (_e) {
           var _left = _e.offsetLeft,
               _current = _e.offsetParent;
           while(_current !== null){
               _left += _current.offsetTop;
               _current = _current.offsetParent;
           }
           return _left;
       },
 
       getAbsoluteTop = function (_e) {
           var _top = _e.offsetTop,
               _current = _e.offsetParent;
           while(_current !== null){
               _top += _current.offsetTop;
               _current = _current.offsetParent;
           }
           return _top;
       }
       eMagnifierMages = document.getElementById("imagesSource");
       initMagnifierMages(eMagnifierMages);
}
 
 
   document.body.onmousemove = function (e) {
       bodyMagnifiermousemove(e);

};