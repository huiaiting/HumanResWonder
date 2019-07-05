<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String article_type_id=request.getParameter("article_type_id");
%>
<!DOCTYPE html>
<html lang="en">
<%@include file="head.jsp" %>
        
    </div>
</div>

    <div class="index">
        <div class="wrap">
            <div class="xwzx">
                <div class="msg-nav">
                    您的位置：
                    <a href="#"><span>首页》</span></a>
                    <a href="#"><span>交流互动</span></a>
                </div>
                <div class="left">
                    <div class="left-title">
                        <p class="l-mag">交流互动</p>
                        <ul id="myTab" class="nav nav-tabs ">
                            <li class="active"><a href="#wyzx" data-toggle="tab">我要咨询<span>></span></a></li>
                            <li><a href="#wyjb" data-toggle="tab">我要举报<span>></span></a></li>
                            <li><a href="#wyts" data-toggle="tab">我要投诉<span>></span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- *******************************我要咨询********************************** -->
                <div class="tab-content right" id="myTabContent">
                    <div class="tab-pane fade in active wyzx-con" id="wyzx">
                        <div class="zxbg">
                          <div class="wyzx-search">
                            <a class="zxzx-btn">在线咨询</a>
                            <select><option>类别</option></select>
                            <div><input type="text" name="" placeholder="主题"><img src="<%=request.getContextPath() %>/resources/img/search.png"></div>
                          </div>
                          <div class="wyzx-table">
                            <table>
                                <tr>
                                    <th>序号</th>
                                    <th>咨询分类</th>
                                    <th>咨询主题</th>
                                    <th>咨询时间</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>法律法规</td>
                                    <td>请问普通住宅小区的人防车位的使用权，是属于全体业主的吗？</td>
                                    <td>2017/10/10</td>
                                </tr>
                            </table>
                            <div class="mypage">
                                <ul class="pag">
                                    <div class="total">共<span>1</span>页</div>
                                    <!-- 点击的链接添加 .disabled 类、给当前页添加 .active 类 -->
                                    <li class="disabled"><a href="#" class="left">&lt;</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#" class="right">&gt;</a></li>
                                </ul>
                            </div>
                          </div>
                          <div class="problem">
                              <div class="pro-tit">常见问题</div>
                              <div class="news-info">
                                  <ul>
                                      <li>
                                          <p>·公安部消防局</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局，切实抓好当前火灾防控</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局，切实抓好当前火灾防控</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局，切实抓好当前火灾防控</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                      <li>
                                          <p>·公安部消防局，切实抓好当前火灾防控</p>
                                          <span>2016-10-10</span>  
                                      </li>
                                  </ul>
                              </div>
                              <div class="mypage">
                                  <ul class="pag">
                                      <div class="total">共<span>1</span>页</div>
                                      <!-- 点击的链接添加 .disabled 类、给当前页添加 .active 类 -->
                                      <li class="disabled"><a href="#" class="left">&lt;</a></li>
                                      <li class="active"><a href="#">1</a></li>
                                      <li><a href="#">2</a></li>
                                      <li><a href="#">3</a></li>
                                      <li><a href="#" class="right">&gt;</a></li>
                                  </ul>
                              </div>
                          </div>
                        </div>
                        <div class="zxsr">
                            <div class="box">
                                <div class="title">在线咨询说明</div>
                                <p class="text">公众可以就自己关心的话题或者有什么疑问进行留言。留言将由公安部消防局相关部门予以解答，具有代表性的留言主题将给与公开。希望本栏目成为消防总队与公众交流的一个平台。欢迎广大群众对我们的工作进行监督，提出宝贵意见和建议。</p>
                                <p class="title">在线咨询须知</p>
                                <p>1、不得发表违反中华人民共和国宪法和其他法律法规的言论；</p>
                                <p>2、不得发表造谣、诽谤他人的言论；</p>
                                <p>3、不得发表未经证实的消息，亲身经历请注明；</p>
                                <p>4、请勿发表任何形式的广告；</p>
                                <p>5、为便于联系和查证，带"*"的内容必须填写，请留言者填写真实姓名和联系方式（网站不对外公布）；</p>
                                <p>6、建议填写正确的E-Mail地址，我们可能会通过电子邮件给您回复或向您了解相关情况；</p>
                                <p>7、在提交完成后，需经网站管理人员接收，有关部门提供回复后，方能显示在留言栏中，同一问题活内容，请大家不要重复提交；</p>
                                <p>8、对于不便对外公开的来信，我们将通过电子邮件、电话等方式给你回复，请提供准确的联系方式，我们将会对您的个人信息严格保密。</p>
                            </div>
                            <div class="box">
                                    <ul>
                                        <li><span><em>*</em>咨询类别：</span><select><option>法律法规</option></select></li>
                                        <li><span>是否公开：</span><select><option>公开</option></select></li>
                                        <li><span><em>*</em>受理对象：</span><select><option>江苏省公安消防总队</option></select></li>
                                        <li><span>上传附件：</span><div class="file"><input type="file" name=""><span>(所选附件不应超过5M 扩展名为：rar,zip,doc,txt,mp3,jpg,docx)</span></div></li>
                                        <li><span><em>*</em>咨询主题：</span><input  type="text" name="" style="width: 300px;"></li>
                                        <li><span><em>*</em>验证码：</span><input type="text" name=""></li>
                                        <li><span><em>*</em>咨询内容：</span><textarea></textarea></li>
                                    </ul>
                                    <button class="submit">提交</button>
                                    <button class="reset">重置</button>
                            </div>
                        </div>
                  </div>
                  <!-- *******************************我要举报********************************** -->
                  <div class="tab-pane fade wyjb-con" id="wyjb">
                      <div class="report">
                          <form>
                              <div class="re-line line1">
                                  <span>举报人：</span>
                                  <input type="" name="">
                                  <span>举报事由：</span>
                                  <input type="" name="">
                              </div>
                              <div class="re-line line2">
                                  <span>相关证据：</span>
                                  <div class="js-file"></div>
                                  <div class="js-up">上传</div>
                                  <input type="file" name="">
                              </div>
                              <div class="re-line line3">
                                  <span>备注：</span>
                                  <textarea></textarea>
                              </div>
                              <button type="commit">提交</button>
                          </form>
                      </div>
                      <div class="problem">
                          <div class="pro-tit">常见问题</div>
                          <div class="news-info">
                              <ul>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                              </ul>
                          </div>
                          <div class="mypage">
                              <ul class="pag">
                                  <div class="total">共<span>1</span>页</div>
                                  <!-- 点击的链接添加 .disabled 类、给当前页添加 .active 类 -->
                                  <li class="disabled"><a href="#" class="left">&lt;</a></li>
                                  <li class="active"><a href="#">1</a></li>
                                  <li><a href="#">2</a></li>
                                  <li><a href="#">3</a></li>
                                  <li><a href="#" class="right">&gt;</a></li>
                              </ul>
                          </div>
                      </div>
                  </div>
                   <!-- 弹出框 -->
			    <div class="modal fade next-ornot" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			        <div class="modal-dialog" role="document">
			            <div class="modal-content">
			                <!-- <div class="modal-header">
			                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			                </div> -->
			                <div class="modal-body">
			                    <p class="title">你尚未登录！</p>
			                </div>
			                <div class="modal-footer">
			                    <button type="button" class="btn" style="color:#333;">登录</button>
			                </div>
			            </div>
			        </div>
			    </div>  
                  <!-- *******************************我要投诉********************************** -->
                  <div class="tab-pane fade wyjb-con" id="wyts">
                      <div class="report">
                          <form>
                              <div class="re-line line1">
                                  <span>投诉人：</span>
                                  <input type="" name="">
                                  <span>投诉事由：</span>
                                  <input type="" name="">
                              </div>
                              <div class="re-line line2">
                                  <span>相关证据：</span>
                                  <div class="js-file"></div>
                                  <div class="js-up">上传</div>
                                  <input type="file" name="">
                              </div>
                              <div class="re-line line3">
                                  <span>备注：</span>
                                  <textarea></textarea>
                              </div>
                              <button type="commit">提交</button>
                          </form>
                      </div>
                      <div class="problem">
                          <div class="pro-tit">常见问题</div>
                          <div class="news-info">
                              <ul>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局</p>
                                      <span>2016-10-10</span>  
                                  </li>
                                  <li>
                                      <p>·公安部消防局，切实抓好当前火灾防控</p>
                                      <span>2016-10-10</span>  
                                  </li>
                              </ul>
                          </div>
                          <div class="mypage">
                              <ul class="pag">
                                  <div class="total">共<span>1</span>页</div>
                                  <!-- 点击的链接添加 .disabled 类、给当前页添加 .active 类 -->
                                  <li class="disabled"><a href="#" class="left">&lt;</a></li>
                                  <li class="active"><a href="#">1</a></li>
                                  <li><a href="#">2</a></li>
                                  <li><a href="#">3</a></li>
                                  <li><a href="#" class="right">&gt;</a></li>
                              </ul>
                          </div>
                      </div>
                  </div>
                </div>
            </div>
        </div>     
    </div>
    <div class="foot">
        <div class="wrap">
            <p>苏ICP备05003446号 主办单位：江苏省公安消防总队</p>
            <p>CopyRight 2003-2015 《江苏消防网》版权所有 地址：南京市龙江小区月光广场6号 邮编：210036</p>
        </div>
</div> 
</body>
<!-- ****************************************js**************************************************-->
<script>
    

    $(".js-up").click(function(){
        $(this).siblings("input[type='file']").click();
        $(this).siblings("input[type='file']").change(function(){
            var file=$(this).val();
            $(this).siblings(".js-file").text(file);
        });   
    });
    $(".zxzx-btn").click(function(){
        $(".zxsr").show();
        $(".zxbg").hide();
          
    });
    $("a[href='#wyzx']").click(function(){
         $(".zxsr").hide();
        $(".zxbg").show();
    });
    
</script>

</html>
    