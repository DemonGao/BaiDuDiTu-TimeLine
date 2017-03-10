/**
 * Created by Administrator on 2016/8/19 0019.
 */
//百度地图API功能
function loadJScript() {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://api.map.baidu.com/api?v=2.0&ak=zsuelrht1HcGTyZGG6BzP9HQ&callback=init";
    document.body.appendChild(script);
}
function init() {
    // 创建Map实例,设置地图允许的最小/大级别
    var map = new BMap.Map("allmap",{minZoom:14,maxZoom:20});
    map.centerAndZoom(new BMap.Point(121.365593,37.528502),15);      // 初始化地图,用城市名设置地图中心点
    map.enableScrollWheelZoom(true);                 //启用滚轮放大缩小

    /*标注使用
     var marker = new BMap.Marker(new BMap.Point(121.365593,37.528502));  // 创建标注
     map.addOverlay(marker);               // 将标注添加到地图中
     marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
     */

//        map.removeControl(stCtrl);
    // 编写自定义函数,创建标注
    function addMarker(point,label){
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
        marker.setLabel(label);
        //跳动的动画
        marker.setAnimation(BMAP_ANIMATION_BOUNCE);
        //添加绑定事件
        marker.addEventListener("click",getAttr);
        function getAttr(){
            var p = marker.getPosition();       //获取marker的位置
            alert("marker的位置是" + p.lng + "," + p.lat);
        }
    }
    // 随机向地图添加25个标注
    var bounds = map.getBounds();
    var sw = bounds.getSouthWest();
    var ne = bounds.getNorthEast();
    var lngSpan = Math.abs(sw.lng - ne.lng);
    var latSpan = Math.abs(ne.lat - sw.lat);
    for (var i = 0; i < 10; i++) {
        var point = new BMap.Point(sw.lng + lngSpan * (Math.random() * 0.7), ne.lat - latSpan * (Math.random() * 0.7));
        var label = new BMap.Label("我是id="+i,{offset:new BMap.Size(20,-10)});
        addMarker(point,label);
    }
    function deletePoint(){
        var allOverlay = map.getOverlays();
        for (var i = 0; i < allOverlay.length -1; i++){
            if(allOverlay[i].getLabel().content == "我是id=1"){
                map.removeOverlay(allOverlay[i]);
                return false;
            }
        }
    }
}
window.onload = loadJScript;  //异步加载地图



