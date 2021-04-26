<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path  = "C:upload";

	DiskFileUpload  upload = new DiskFileUpload();
	
	//저장될 파일의 최대 크기(Byte)
	upload.setSizeMax(1000000);
	//메모리에 저장될 파일의 최대 크기(Byte)
	upload.setSizeThreshold(4096);
	//업로드한 파일을 저장할 경로
	upload.setRepositoryPath(path);
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	while(params.hasNext()) {
		FileItem item = (FileItem) params.next();
		
		if(item.isFormField()) {
			// 요청 파라미터의 이름
			String name = item.getFieldName();
			// 요청 파라미터를 문자열로 가져옴(UTF-8 인코딩을 해서)
			String value = item.getString("UTF-8");
			out.println("<p>" + name + "=" + value + "</p>");
			
		} else {
			// 요청 파라미터의 이름
			String fileFieldName = item.getFieldName();
			// 업로드한 파일의 이름
			String filename = item.getName();
			// 업로드한 파일의 Mine Type
			String contentType = item.getContentType();
			
			filename = fileName.substring(filename.lastIndexOf("\\") + 1);
			long fileSize = item.getSize();
			
			out.println("<hr>");
			
			out.println("<p>요청 파라미터 이름 :"+fileFieldName+ "</p>" );
			out.println("<p>파일 이름 :"+filename+ "</p>");
			out.println("<p>요청 파라미터 이름 :"+filecontenttype+ "</p>");
			out.println("<p>요청 파라미터 이름 :"+fileFieldName+ "</p>");
		}
		
	}
	
%>
< !DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>