<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Result</title>
</head>
<style>
        .ratio{padding-top:20px  }
        .ratio li{float:center;position:relative;width:100px;height:300px;margin-right:10px;list-style:none}
        .ratio div{position:absolute;left:0;bottom:0;width:100%;background:#D9AAF0 repeat;}
        /* .ratio em{position:absolute; top:-30px;width:100%;font-size:20px;font-weight:bold;text-align:left;}
         */
         .ratio em{position:relative; top:-50px; font-weight:bold;}
        
.vote-wrapp{
	background-color: #fdeafd;
	width: 600px;
	margin: 50px; auto;
	border-bottom: 1px solid #fdeafd;
	box-shadow: 0px 11px 31px rgb(0,0,0,0.2);
}

.vote-top{
	background-color: #e32fe5;
	padding: 60px 0 120px;
	text-align: center;
}
.vote-title{
	font-size: 30px;
	colot: #c92bcc;
	text-align: center;
	font-weight: 400;
}
.vote-form{
	margin-top: 30px;
}

.vote-box{
	background-color: #fdeafd;
	margin:-40px 40px 40px;
	border-radius: 20px;
	padding: 20px 40px 40px;
	box-shadow: 0px 3px 20px rgb(0,0,0,0.2);
}
.vote-button{
	background-color: #e32fe5;
	width: 150px;
	display: block;  
	margin-top:20px;
	height: 50px;
	line-height: 50px;
	border-radius: 80px;
	color: #fdeafd;
	font-size: 16px;
	font-weight: 700;
}
    </style>
<body>
   <%
        Connection conn=null;
      PreparedStatement pstmt1=null;
      PreparedStatement pstmt2=null;
      ResultSet rs1 = null;
      ResultSet rs2 = null;
      int cntSum = 0;
      
      // 색상랜덤
      Random r= new Random(); 
      String rgb;
   
     try{
       String jdbcUrl = "jdbc:mysql://18.205.188.103:3306/test?&useSSL=false";
        String dbId = "lion";
        String dbPass = "1234";
      
       Class.forName("com.mysql.cj.jdbc.Driver");
       conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
       System.out.println("DB에 연결되었습니다.");

     }catch(Exception e){ 
       e.printStackTrace();
     }
   %>
   <form method=post class = "vote-form">
   <div align="center">
      <table class = "vote-box">
         <tr>
            <td colspan="4"><h1 align="center">투표 결과</h1></td>
         </tr>
         <tr>
         
         <%
         try{
               String sql1 = "select sum(cnt) as cntSum from candidate";
               pstmt1 = conn.prepareStatement(sql1);
               rs1 = pstmt1.executeQuery();
               while(rs1.next()){
                  cntSum = rs1.getInt("cntSum");
                  System.out.print(cntSum + "    ");
               }

               String sql2 = "select * from candidate";
               pstmt2 = conn.prepareStatement(sql2);
               rs2 = pstmt2.executeQuery();
            
               while(rs2.next()){
                  int id = rs2.getInt("id");
                  String name = rs2.getString("name");
                  int cnt = rs2.getInt("cnt");    

         %>
         
         <td>
            <ul class="ratio" align="center">
                  <li>
                     <%
                     rgb = "#"+Integer.toHexString(r.nextInt(255*255*255));
                     double percent = (cnt*100)/cntSum; //순서바뀌면 오류 뜸  (cnt/cntSum)*100
                     %>
                     <div style="height: <%=percent %>%; background-color:<%=rgb%>" align="center">
                        <em><%=percent %> %</em>
                     </div>
                  </li>
               </ul>
            </td>
         
         <% 
                  
            }
         }catch(Exception e){
            e.printStackTrace();
         }finally{
            try{
               if(rs1!=null) rs1.close();
               if(rs2!=null) rs2.close();
               if(pstmt1!=null) pstmt1.close();
               if(pstmt2!=null) pstmt2.close();
               if(conn!=null) conn.close();
            }catch(SQLException se){
               System.out.println(se.getMessage());
            }
         }
         
         %>
      </tr>
    
         <tr align="center" >
            <td>광양</td>
            <td>포항</td>
            <td>판교</td>
            <td>베트남</td>
         </tr>
      </table>
      <input class="vote-button" type="button" value="뒤로가기" onclick="history.back(-1);">
   </div>
   </form>
   </body>

</html>