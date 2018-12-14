package config.mybatis;

import java.io.Reader;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.biz.member.MemberVO;

public class DBMyBaitsManager {
	public SqlSession mybatisConn() {
		String path = "config/mybatis/config-mybatis.xml";
		Reader reader;
		SqlSessionFactory factory = null;
		SqlSession conn = null;
		try {
			reader = Resources.getResourceAsReader(path);
			factory = new SqlSessionFactoryBuilder().build(reader);
			conn = factory.openSession();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void mybatisClose(SqlSession conn) {
		//System.out.println("close");
		if(conn != null) conn.close();
	}

	public static void main(String[] args) {
		DBMyBaitsManager db = new DBMyBaitsManager();
		SqlSession conn =db.mybatisConn();
		
		MemberVO vo = new MemberVO();
		vo.setUserId("admin");
		vo.setUserPw("111");
		vo.setUserName("오알엠");
		
//		MemberVO rvo = conn.selectOne("userNameSpace.login", vo);
//		System.out.println(rvo.getUserName());
		
//		int ires = conn.insert("userNameSpace.member_register", vo);
//		System.out.println(ires + "건 입력");
//		conn.commit();
		
//		vo.setUserName("변경");
//		vo.setUserPw("333");
//		vo.setUserEmail("dd@dd.com");
//		vo.setPpath("c:/uploads");
//		vo.setPname("aa.jpg");
//		vo.setSysname("iur9u3089u438.jpg");
//		int ures = conn.update("userNameSpace.member_update",vo);
//		System.out.println(ures + "건 수정");
//		conn.commit();
//		
		String stringID = "lkh";
//		int dres = conn.update("userNameSpace.member_delete",stringID);
//		System.out.println(dres + "건 탈퇴");
//		
		
		
		
//		MemberVO detailVO = conn.selectOne("userNameSpace.member_detail","admin");
//		System.out.println(detailVO);
//		System.out.println(detailVO.getUserName());
//		System.out.println(detailVO.getPpath());
//		
//		conn.rollback();
		
		MemberVO lvo = new MemberVO();
		lvo.setSearchGubun("user_id");
		lvo.setSearchStr("lkh");
		ArrayList<MemberVO> list = (ArrayList)conn.selectList("userNameSpace.member_list", lvo);
		System.out.println(list.size()+"건");
		System.out.println(list.get(0).getUserName());
//		
		
		
//		conn.selectList(arg0, arg1);
//		conn.selectOne(arg0, arg1);
//		conn.insert(arg0, arg1);
//		conn.update(arg0, arg1);
//		conn.delete(arg0, arg1);
//		conn.commit();
//		conn.rollback();
		
		
		db.mybatisClose(conn);
		
		//DI Call Test
//		GenericXmlApplicationContext ctx
//		 = new GenericXmlApplicationContext("classpath:test.xml");
//		TestDAO dao = (TestDAO)ctx.getBean("aaaa");
//		ArrayList<BoardVO> list = dao.boardList(1, 10);
//		System.out.println(list.size() + "건 출력");
	}

}
