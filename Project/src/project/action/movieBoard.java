package project.action;

import java.io.Reader;

import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class movieBoard {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	public movieBoard() throws Exception{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	// 영화 게시판 매핑정보 불러오기
	@RequestMapping("/movieBoard.do")
	public String movieBoard(){
		return "/Project_FileShare/movieBoard.jsp";
	}
	
}
