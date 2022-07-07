package co.grandcircus.springlab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FirstController {
	
	@RequestMapping("/index")
	public String showIndex() {
		return "index";
	}
	
	@RequestMapping("/pizza")
	public String showPizza1(@RequestParam String type, Model model) {
		
		model.addAttribute("type", type);
		
		return "display-Pizza1";
	}
	
	@RequestMapping("/pizza2")
	public String showPizza2(@RequestParam String type, Model model) {
		
		model.addAttribute("type", type);
		
		return "display-Pizza2";
	}
	
	@RequestMapping("/pizza3")
	public String showPizza3(@RequestParam String type, Model model) {
		
		model.addAttribute("type", type);
		
		return "display-Pizza3";
	}
	
	@RequestMapping("/builder")
	public String showBuilder(@RequestParam String type, Model model) {
		
		model.addAttribute("type", type);
		
		return "display-Builder";
	}
	
	@RequestMapping("/review")
	public String showRater(@RequestParam String type, Model model) {
		
		model.addAttribute("type", type);
		
		return "display-Review";
	}
	
	@RequestMapping("/form")
	public String showFormComplete() {		
		return "form-complete";
	}
	
	@RequestMapping("/calcTotal")
	public String showTotal(@RequestParam String size, @RequestParam(defaultValue="0") int topCount, @RequestParam(required=false) boolean noGluten, @RequestParam(defaultValue="None") String special, Model model) {
		model.addAttribute("size", size);
		model.addAttribute("topCount", topCount);
		model.addAttribute("noGluten", noGluten);
		model.addAttribute("special", special);
		double numTotal = 0;
		double toppingTotal = 0;
		if (size.equals("small")) {
			numTotal = 7.0;
			toppingTotal = topCount * .5;
		} else if (size.equals("medium")) {
			numTotal = 10.0;
			toppingTotal = topCount * 1;
		} else if (size.equals("large")) {
			numTotal = 12.0;
			toppingTotal = topCount * 1.25;
		}
		numTotal += toppingTotal;
		if (noGluten == true) {
			numTotal += 2;
		}
		String total = String.format("%.2f", numTotal);
		String gluten;
		if (noGluten == true) {
			gluten = "Yes";
		} else {
			gluten = "No";
		}
		model.addAttribute("total", total);
		model.addAttribute("gluten", gluten);
		return "calcTotal";
	}
}