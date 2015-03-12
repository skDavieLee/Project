package project.action;

import java.io.Reader;
import javax.servlet.http.HttpSession;
import project.bean.memberDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

@Controller
public class formBean {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	public memberDTO memDTO = null;
	
	public formBean() throws Exception{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	
	@RequestMapping("/main.do")
	public String main(){
		return "/main/main.jsp";
	}
	
	
	@RequestMapping("/joinForm.do")
	public String form(){
		return "/join/joinForm.jsp";
	}
	
	
	
	@RequestMapping("/joinPro.do")
	public ModelAndView formPro(memberDTO memDTO){
		try{
			sqlMapper.insert("insertMember",memDTO);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/main/main.jsp");
		return mv;
	}
	
	
	public void setDTO(memberDTO memDTO){
		this.memDTO=memDTO;
	}
	
	
	
	@RequestMapping("/loginPro.do")
	public ModelAndView LoginPro(memberDTO memDTO, HttpSession session){
		int check=0;
		memberDTO memInfo = new memberDTO();
		try{
			check=(Integer)sqlMapper.queryForObject("userCheck",memDTO);
			memInfo = (memberDTO)sqlMapper.queryForObject("userInfo",memDTO);
			if(check==1){
				session.setAttribute("memId", memDTO.getMemId());
				session.setAttribute("memPoint", memInfo.getMemPoint());
				session.setAttribute("memGrade", memInfo.getMemGrade());
				session.setAttribute("memName", memInfo.getMemName());
			}
		}catch(Exception e){}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/main/main.jsp");
		return mv;
	}

	
	@RequestMapping("/logoutPro.do")
	public ModelAndView logoutPro(memberDTO memDTO, HttpSession session){
		try{
			session.setAttribute("memID", memDTO.getMemId());
		}catch(Exception e){}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/main/main.jsp");
		return mv;
	}
}
