<%@ page language="java" 
import="java.util.*"
contentType="text/html;; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>生成数学题如下：</title>
</head>
<body>
   <form action=""method="post">
     <%! 
     public static String sheng(int i,int m){
 	  	char [] a=new char[5];
     	a[0]='+';a[1]='-';a[2]='*';a[3]='/';
   	  Random rand=new Random();
     
     	int b=(int)rand.nextInt()/100000000;
     	
         int k=1;
     	while (k==1){
     	int c=(int)rand.nextInt()/100000000;
     	if(c!=0){
     		k=2;
     		if(c<0){
                    String s =i+1+".  "+b+" "+a[(int) (Math.random()*4)]+" ("+c+")=";	
                 return s;	
     		}
     		else{
     			String s =i+1+".  "+b+" "+a[(int) (Math.random()*4)]+" ("+c+")=";	
     			 return s;	
     		}
     	}
     	}
 		return null;
      
    }  
    %>
    
    
     <%!
     public static String fenshu (int i,int m){
       	char [] a=new char[5];
     	a[0]='+';a[1]='-';a[2]='*';a[3]='/';
   	  Random rand=new Random();

     	int b=(int)rand.nextInt()/100000000;
     	
         int k=1;
         while (k==1){
         	int d=(int)rand.nextInt()/100000000;
         	
         	int c=(int)rand.nextInt()/100000000;
         	int e=(int)rand.nextInt()/100000000;
     	if(c!=0){
     		if(c<0&&d!=0&&e!=0&&b<d&&c<e){k=2;
     		String s=i+1+".  "+b+"/"+d+" "+a[(int) (Math.random()*4)]+" ("+c+"/"+e+")=";
             return s;	
     		}
     		else if(d!=0&&e!=0&&b<d&&c<e){k=2;
     		String s=i+1+".  "+b+"/"+d+" "+a[(int) (Math.random()*4)]+" ("+c+"/"+e+")=";	
             return s;
     		}
     		
     	}
     	
      }
 		return null;
     }
    %>
     
     
     <%    
      request.setCharacterEncoding("UTF-8");
	  int m = Integer.parseInt(request.getParameter("username"));
	    for(int k=0;k<m;k++){
	          int a=(int) (Math.random()*2+1);
	        	if(a==2){%>      	
	        	<%=sheng(k,m)%><br>        	
	        	  <% 
	        	         }
	        	    else 
	        	    {
	        	  %>	        	
	        	    <%=fenshu(k,m)%><br>        	
	        	  <%  }} %>
    请输入答案 &nbsp; ：<br>
    	<%for(int x=0;x<m;x++){ %>
    	<%=x+1 %>.<input type="type"name ="number">
    	<center>
         <input type="submit" value="提交">
        </center>
    
       <%} %>

</body>
</html>