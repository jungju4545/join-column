package com.helloflea.helloflea.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.helloflea.helloflea.model.Category;
import com.helloflea.helloflea.model.Local;
import com.helloflea.helloflea.model.Market;
import com.helloflea.helloflea.repository.MarketRepository;

@Controller
public class MarketController {

	@Autowired
	private MarketRepository marketRepo;
	@Autowired
	private BCryptPasswordEncoder bcpe;
	
	@Value("${file.path}")
	private String fileRealPath;
	
/////////////////////태스트///////////////////////////
@GetMapping("/market/test")
public String test() {
	
	return"/list/test";
}

///////////////////////////////////////////////////

	////////////////////주소api////////////////////
	@RequestMapping(value = "market/jusoPopup", method= {RequestMethod.GET, RequestMethod.POST})
	   public String juso() {
	      return "market/jusoPopup";
	   }//완료
	////////////////////////////////////////
	
	////////////////마켓 상세정보///////////////////
	@GetMapping("/market/detail/{id}")
	public  String marketDetail(Model model, @PathVariable int id) {
		Optional<Market> markets = marketRepo.findById(id);
		Market market = markets.get(); // optional사용할땐 optional담고 .get()으로 해서 다시 모델에 담는
		model.addAttribute("market", market);
		return "detail/market-detail";
	}//완료
	
	////////////////////////////////////////
//	@PostMapping("/market/joinProc")
//	public String MarketJoin(Market market) {
//		marketRepo.save(market);
//		return"redirect:/market/marketlist";
//		
//	}
	
	////////////////마켓등록////////////////////
	@GetMapping("/market/join")
	public String joinForm() {
		return "/market/join";
	}//완료
	
	@PostMapping("/market/joinProc")
	public String MarketJoin(
			Market market,
			@RequestParam("file") MultipartFile file
			//RequestParam("여기에는 jsp에서 넘어온 input의 name")
			)
	{
		
		UUID uuid = UUID.randomUUID();
		String uuidFilename =uuid+ "_" + file.getOriginalFilename();
		Path filePath = Paths.get(fileRealPath + uuidFilename);
		System.out.println(filePath);
		
		 // 사진 업로드 경로 설정
		try {
			Files.write(filePath, file.getBytes());// 하드디스크에 기록, IOExption이 일어날 수 있어서 try catch
		} catch (IOException e) {
			e.printStackTrace();
		} //  file저장 완료
		
		market.setMarketImage(uuidFilename);//이거 안하면 DB에 null뜬다.
		
		marketRepo.save(market);
		return"redirect:/market/marketlist";
		
	}//완료
	///////////////////////////////////////
	
	
	////////////////testjoin(사진 여러장 넣기)////////////////////
	@GetMapping("/market/testjoin")
	public String testjoinForm() {
		return "/market/testjoin";
	}//완료
	
	@PostMapping("/market/testjoinProc")
	public String testMarketJoin(
			Market market,
			@RequestParam("file") MultipartFile file
			//RequestParam("여기에는 jsp에서 넘어온 input의 name")
			)
	{
		List<MultipartFile>files;
		
		UUID uuid = UUID.randomUUID();
		String uuidFilename =uuid+ "_" + file.getOriginalFilename();
		Path filePath = Paths.get(fileRealPath + uuidFilename);
		System.out.println(filePath);
		 // 사진 업로드 경로 설정
		try {
			Files.write(filePath, file.getBytes());// 하드디스크에 기록, IOExption이 일어날 수 있어서 try catch
		} catch (IOException e) {
			e.printStackTrace();
		} //  file저장 완료
		
		market.setMarketImage(uuidFilename);//이거 안하면 DB에 null뜬다.
		marketRepo.save(market);
		return"redirect:/market/marketlist";
		
	}//완료
	///////////////////////////////////////
	
	/////////////////마켓 리스트////////////////
	@GetMapping("/market/marketlist")
	public String marketList(Model model) {
		//마켓의 모든 정보를 전부 들고올거임 (단 승인이 된것만)
		List<Market> markets = marketRepo.findAll();
		model.addAttribute("markets", markets);
		return "list/marketlist";
	}//완료
	
	
	///////////////////////////////////////
	
	
	///////////////마켓 업데이트/////////////////
	@GetMapping("/market/updateForm/{id}")
	public String updateForm(Model model,@PathVariable int id) {
		Optional<Market>marketDetail=marketRepo.findById(id);
		Market market = marketDetail.get();
		model.addAttribute("market", market);
		return"/market/update";
	}
	
	@PostMapping("/market/update/{id}")
	public String update(
			@PathVariable int id,
			Market market,
			@RequestParam("file") MultipartFile file
			) {
		
		UUID uuid = UUID.randomUUID();
		String uuidFilename =uuid+ "_" + file.getOriginalFilename();
		Path filePath = Paths.get(fileRealPath + uuidFilename);
		 // 사진 업로드 경로 설정
		try {
			Files.write(filePath, file.getBytes());// 하드디스크에 기록, IOExption이 일어날 수 있어서 try catch
		} catch (IOException e) {
			e.printStackTrace();
		} //  file저장 완료
		
		market.setMarketImage(uuidFilename);//이거 안하면 DB에 null뜬다.
		marketRepo.save(market);
		
		return"redirect:/market/marketlist";
	}// 사진, 업데이트 시간빼고 완료
	
	
	///////////////////////////////////////
	
///////////////마켓 삭제하기/////////////////
@GetMapping("/market/delete/{id}")
	public String delete(@PathVariable int id) { 
	marketRepo.deleteById(id);
	return"redirect:/market/marketlist";
}//완료

///////////////////////////////////////

////////////유저 아이디로 등록한 마켓 찾기///////////


///////////////////////////////////////
	
}
