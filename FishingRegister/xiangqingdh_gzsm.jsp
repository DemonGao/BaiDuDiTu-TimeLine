<%@ include file="a_toubu.jsp" %><%@ page language="java" pageEncoding="UTF-8"%><%
//首页,刘荣,2015-3-15
Map mp,mp2,mp3;//Map
ArrayList liebiao,liebiao2,liebiao3;//列表
String shujukyj,shujukyj2,shujukyj3,shujukyjtj,shujukyjtj2,shujukyjtj3,canshu;//sql语句 
String biaohao=zfccl.dedaoqqbl("biaohao","weishangrm_xinwenfl");//标号
Map xiangqingdh=sjk.dedaoytjl("select * from xitongfz where biaohao='"+biaohao+"'");//详情导航
xiangqingdh.put("guanlianbmc","xitongfz");sjk.liuliangtj(xiangqingdh,request);//流量统计 
//if(String.valueOf(dlyh.get("biaohao")).equals("")){out.println("<script language='javascript'>top.location='https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3215b7e89e019360&redirect_uri=http://www.vasttown.com/rcms20/shouji/denglu_wx.jsp&response_type=code&scope=snsapi_userinfo&state=rongsoft#wechat_redirect'</script>");  return;} 
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta http-equiv="Content-Language" content="UTF-8" />		
<title><%=zd.get("biaoti")%></title> 
<meta name="keywords" content="<%=zd.get("guanjianz")%>" /> 
<meta name="description" content="<%=zd.get("miaoshu")%>" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link href="images/a_css.css" type="text/css" rel="stylesheet">
</head>
<body> 
<div class="quanju guize">
    <div class="dingbu">
        <div class="fanhui">
        	<a href="index.jsp">
                <img src="images/fanhui.png" alt="">
                <span>返回</span>	
            </a>			
        </div>			
    </div>
    <div class="toubu">
        <div class="biaoti">
            <p>———— 活动介绍 ————</p>
        </div>						
    </div>
    <div class="neirong">
        <ul>
            <li>
                <h3>一．活动背景</h3>
                <p style="text-indent:2em;">大学生活色彩斑斓，大学校园是一个充满青春、阳光、时尚、活力的舞台，各路青年才俊层出不穷，选美大赛永远都博人眼球！</p>
            </li>
            <li>
                <h3>二．活动时间</h3>
                <p>海选：6月15日-9月15日</p>
                <p>总决赛：9月17日-20日</p>
            </li>
            <li>
                <h3>三．赛制</h3>
                <p>A、本次大赛分男神组、女神组，采用海选、初赛、总决赛赛制。</p>
                <p>B、大赛周期延续三个月：</p>
                <p>海选：选手自愿报名，凡符合报名条件均可参与</p>
<!--                <p>初赛：初赛所有参赛者中，按票数由高到低，各院校男神组，女神组前3名进入总决赛</p>
-->             <p>总决赛：复赛所有参赛者中，按票数由高到低，各院校男神组，女神组前3名进入总决赛</p>
            </li>
            <li>
                <h3>四.大赛流程（2016年6月15日-9月20日）</h3>
                <p>a)海选：（6月15日-9月17日）微信报名，参赛者通过登录微信公众号上传个人照片及填写资料。通过投票评选，60名进入复赛。</p>
                <p>b)决赛：（9月15日-20日）60名决赛选手在以冠名方为主布置场地进行现场才艺表演。</p>
                <p>决赛版块：</p>
                <p>“我说我生活”——自我介绍（姓名、专业、爱好、大学生活）</p>
                <p>“我说我灵感”——即兴问答（题目有关：大学生、社会历史、校园文化等）</p>
                <p>“我秀我才艺”——才艺表演（唱歌、跳舞、武术、相声、书法、绘画等）</p>
                <p>最后结果由微信投票（60%）和现场评委打分（40%）决出，冠亚季军男女组各1名，还有其他人气奖，最佳才艺奖等。</p>
                <p>d）公布结果，颁奖</p>
                <p>备注：评委是本次活动赞助商</p>
            </li>
            <li>
                <h3>五、选手须知</h3>
                <p>1、参赛选手需提供准确的参赛资料，及时对资料做出必要的更新，使之符合要求。如果提供的资料有虚假，九五零有权取消参赛资格。</p>
                <p>　2、大赛公开参赛者的姓名、星座、电子邮箱、个人爱好等，除非参赛者向九五零提出要求；九五零可以公开参赛选手的必要资料，参赛者不得有异议。</p>
                <p>3、参赛规定4个系列的服装，即校园装、晚装、运动装、休闲装，每位选手任选1个系列进行展示（禁着装暴露）。</p>
                <p>4、九五零可以随时根据遇人力不可抗拒因素的实际情况中断大赛，并且无需对参赛者负责。</p>
                <p>5、九五零将尽力维护参赛者的参赛资料的安全，但不能对因为不可抗力或网络安全问题等突发性、偶然性、不可预见性情况所造成的资料损坏、丢失及其他有关的直接、间接、附带、特殊或后果性的损失做出任何保证。即使发生这种情况，九五零不负责补偿参赛者的损失。</p>
            </li>
           <!-- <li>
                <h3>六、赞助</h3>
                <table>
                    <tr>
                        <td>主办单位</td>
                        <td>烟台九五零网络科技有限公司</td>
                    </tr>
                    <tr>
                        <td>冠名企业</td>
                        <td>6万~12万</td>
                    </tr>
                    <tr>
                        <td>协办企业</td>
                        <td>10000元（可用部分产品抵扣）</td>
                    </tr>
                    <tr>
                        <td>合作单位</td>
                        <td>2000元（可用产品抵扣）</td>
                    </tr>
                    <tr>
                        <td>活动时间</td>
                        <td>6月15日~9月20日</td>
                    </tr>
                    <tr>
                        <td>微信广告栏（轮播图）</td>
                        <td>100-1000元每天</td>
                    </tr>
                </table>
            </li>-->
            <li>
                <h3>六、承办单位</h3>
                <table>
                    <tr>
                        <td class="xiao">1</td>
                        <td class="da">山东东方海洋科技股份有限公司</td>
                        <td class="xiao">9</td>
                        <td class="da">北京启航考试学校</td>							
                    </tr>
                    <tr>
                        <td class="xiao">2</td>
                        <td class="da">山东东方能量服务营销公司</td>
                        <td class="xiao">10</td>
                        <td class="da">烟台荣华软件科技有限公司</td>														
                    </tr>
                    <tr>
                        <td class="xiao">3</td>
                        <td class="da">烟台泽熙国际贸易有限公司</td>
                        <td class="xiao"></td>
                        <td class="da"></td>														
                    </tr>
                    <tr>
                        <td class="xiao">4</td>
                        <td class="da">烟台张裕葡萄酿酒股份有限公司</td>
                        <td class="xiao"></td>
                        <td class="da"></td>							
                    </tr>
                    <tr>
                        <td class="xiao">5</td>
                        <td class="da">烟台智投电子商务有限公司</td>
                        <td class="xiao"></td>
                        <td class="da"></td>
                    </tr>
                    <tr>
                        <td class="xiao">6</td>
                        <td class="da">滨州医学院烟台附属医院母婴健康促进部内设高档月子中心</td>
                        <td class="xiao"></td>
                        <td class="da"></td>
                    </tr>
                    <tr>
                        <td class="xiao">7</td>
                        <td class="da">新东方</td>
                        <td class="xiao"></td>
                        <td class="da"></td>
                    </tr>
                    <tr>
                        <td class="xiao">8</td>
                        <td class="da">烟台菲尚模特培训学校</td>
                        <td class="xiao"></td>
                        <td class="da"></td>
                    </tr>						
                </table>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
<%@ include file="a_dibu.jsp" %>