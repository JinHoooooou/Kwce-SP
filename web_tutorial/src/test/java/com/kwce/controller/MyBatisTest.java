package com.kwce.controller;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//Runner class(테스트 메소드 실행 클래스)를 SpringJUnit4ClassRunner로 설정
@RunWith(SpringJUnit4ClassRunner.class)
//locations에 해당하는 xml파일을 이용하여 스프링 로딩
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MyBatisTest {

	//객체 자동 생성
	@Autowired
	private SqlSessionFactory sqlFactory;
	
	//SqlSessionFactory 객체 생성 test
	@Test
	public void testFactory() {
		System.out.println(sqlFactory);
	}
	
	//MyBatis와 Mysql서버가 연동 되었는지 test
	@Test
	public void testSession()throws Exception{
		try {
			SqlSession session=sqlFactory.openSession();
			System.out.println(session);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
