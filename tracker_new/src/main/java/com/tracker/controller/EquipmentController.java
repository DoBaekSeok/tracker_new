package com.tracker.controller;


import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tracker.model.dto.EquipPhoto;
import com.tracker.model.dto.Equipment;
import com.tracker.service.EquipmentService;

@Controller
@RequestMapping(value = "equipment")
public class EquipmentController{	
	
	@Autowired
	private EquipmentService equipmentService;
		
	@RequestMapping(value = "equipmentlist.action", method = RequestMethod.GET)
	public String getEquipmentList() {
		
		return "manageequipment/manageequipment";
		
	}
	
	@RequestMapping("equipmentlistajax.action")
	@ResponseBody
	public List<Equipment> getEquipmentListAjax() {
		
		List<Equipment> equipments = equipmentService.processShowEquipments();
		
		return equipments;
		
	}
	
	@RequestMapping("equipmenteditajax.action")
	public void getEquipmentedit(HttpServletRequest req, HttpServletResponse resp) {
		
		//가상경로를 물리경로로 변환하는 기능을 가진 객체 반환
		//ServletContext application = req.getSession().getServletContext();
	    
		//가상경로 -> 물리경로
		//String path = application.getRealPath("/resources/img/product");
		
		Equipment equipment = new Equipment();
		//EquipPhoto equipphoto = new EquipPhoto();
		String oper = req.getParameter("oper");
		
		if(oper.equals("add")){			

			String equipName = req.getParameter("equipName");
	        String modelName = req.getParameter("modelName");
	        int equipPrice = Integer.parseInt(req.getParameter("equipPrice"));
	        String equipContent = req.getParameter("equipContent");  
	       // String savedFileName = req.getParameter("equipPhoto");
	        //System.out.println(savedFileName);

			equipment.setEquipName(equipName);
			equipment.setModelName(modelName);
			equipment.setEquipPrice(equipPrice);
			equipment.setEquipContent(equipContent);
			//equipphoto.setSavedFileName(savedFileName);

			equipmentService.AddEquipment(equipment);

			///////////////////////////////////////////////////////////////// add insertEquipment


		}else if(oper.equals("edit")){
			

		
			int equipNo = Integer.parseInt(req.getParameter("equipNo"));
			String equipName = req.getParameter("equipName");
	        String modelName = req.getParameter("modelName");
	        int equipPrice = Integer.parseInt(req.getParameter("equipPrice"));
	        String equipContent = req.getParameter("equipContent");
			
	        equipment.setEquipNo(equipNo);
	    	equipment.setEquipName(equipName);
			equipment.setModelName(modelName);
			equipment.setEquipPrice(equipPrice);
			equipment.setEquipContent(equipContent);

			equipmentService.EditEquipment(equipment);
			
		}
		
		
//		@RequestMapping(value = "photoregister.action", method = RequestMethod.POST)
//		public String photoregisterEdit(MultipartHttpServletRequest req, String id, String title, String content) {
//			//가상경로를 물리경로로 변환하는 기능을 가진 객체 반환
//			ServletContext application = req.getSession().getServletContext();
//					
//			//가상경로 -> 물리경로
//			String path = application.getRealPath("/resources/imagefile/");
//			
//			Board board = new Board();
//			board.setBdWriter(id);
//			board.setBdTitle(title);
//			board.setBdContent(content);
//			System.out.println(id+"/"+title+"/"+content);
//			boardService.insertPhoto(board);
//			MultipartFile file = req.getFile("img");//요청 데이터에서 파일 정보 추출
//			if (file != null && file.getSize() > 0) {
//				
//				String fileName = file.getOriginalFilename();//파일이름 읽어서 변수에 저장
//				if (fileName.contains("\\")) {//IE일 경우 전체 경로에서 파일이름만 추출
//					//C:\ABC\DEF\xyz.txt -> xyz.txt
//					fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
//				}
//				String savedName = Util.getUniqueFileName(path, fileName);
//				BoardImage boardImage = new BoardImage();
//				
//				boardImage.setBdImgName(savedName);
//				boardImage.setBdNo(board.getBdNo());
//				
//				boardService.insertPhotoImage(boardImage);
//				
//				//파일을 디스크에 저장
//				try {
//					FileOutputStream ostream = 
//						new FileOutputStream(new File(path, boardImage.getBdImgName()));
//					InputStream istream = file.getInputStream();
//					while (true) {
//						int data = istream.read();
//						if (data == -1) break;
//						ostream.write(data);
//					}
//					istream.close();
//					ostream.close();
//				} catch (Exception ex) {
//					ex.printStackTrace();
//				}
//			}
//
//			return "redirect:/board/photolist.action";
//		}
//		

	}
}