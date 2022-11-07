package com.kh.pillipop.medicine.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.pillipop.medicine.model.service.MedicineService;
import com.kh.pillipop.medicine.model.service.MedicineService2;
import com.kh.pillipop.medicine.model.vo.MLike;
import com.kh.pillipop.medicine.model.vo.Medicine;
import com.kh.pillipop.medicine.model.vo.Medicine2;
import com.kh.pillipop.pharmacy.model.service.PharmacyService;
import com.kh.pillipop.pharmacy.model.vo.Pharmacy;

//@Slf4j
@Controller
@RequestMapping("/medicine")
public class MedicineController {

	@Autowired
	private MedicineService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Medicine> list = service.selectAll();
		List<MLike> like = service.selectLike();
		
		model.addAttribute("list", list);
		model.addAttribute("like", like);
		return "html/medicine/list";
	}
	
	@GetMapping("/view")
	public String view(Model model, @RequestParam("itemSeq") int itemSeq) {
		Medicine medicine = service.selectByNo(itemSeq);

		model.addAttribute("medicine", medicine);
		return "html/medicine/view";
	}
	
	@Autowired
	private MedicineService2 service2;
	
	@GetMapping("/list2")
	public String list2(Model model) {
		List<Medicine2> list = service2.selectAll();
		
		model.addAttribute("list", list);
		return "html/medicine/list2";
	}
	
	@GetMapping("/view2")
	public String view2(Model model, @RequestParam("ITEM_SEQ") int ITEM_SEQ) {
		Medicine medicine = service.selectByNo(ITEM_SEQ);
		Medicine2 medicine2 = service2.selectByNo(ITEM_SEQ);

		model.addAttribute("medicine2", medicine2);
		model.addAttribute("medicine", medicine);
		return "html/medicine/view2";
	}

	@Autowired
	private PharmacyService service3;
	
	@GetMapping("/mLike")
	public String mLike(Model model) {
		List<Medicine> list = service.selectLikeMedicine();
		List<Pharmacy> Plist = service3.selectLikePharmacy();
		
		model.addAttribute("list", list);
		model.addAttribute("Plist", Plist);
		return "html/myPage/5_myPage-favorites";
	}
}
