package kim.kang.kitri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.post.impl.PostDAO;


@Controller
public class PostController {


	@Autowired
	private PostService postservice;
	
	@RequestMapping("/postlist.do")
	public String getPostList(@RequestParam(value = "searchCondition", defaultValue = "writer", required = false)
	String contition,@RequestParam(value = "searchKeyword", defaultValue = "", required = false) String keyword, 
	PostVO vo, Model model){ // handleRequest(HttpServletRequest request, HttpServletResponse response) 
		
		
		if(vo.getSearchCondition() ==null) vo.setSearchCondition("writer");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		
		
		// Ű���� ���� ���� ������ �⺻������ ���� �ش�Ǵ� ��� ���� ��� 
		
		
		System.out.println(keyword);
		System.out.println(contition);
		model.addAttribute("postlist", postservice.getPostList(vo));
		
		return "index.jsp";
	}

}