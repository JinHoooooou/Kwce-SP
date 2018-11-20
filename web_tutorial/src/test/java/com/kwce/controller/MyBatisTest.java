package com.kwce.controller;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//Runner class(�׽�Ʈ �޼ҵ� ���� Ŭ����)�� SpringJUnit4ClassRunner�� ����
@RunWith(SpringJUnit4ClassRunner.class)
//locations�� �ش��ϴ� xml������ �̿��Ͽ� ������ �ε�
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MyBatisTest {

	//��ü �ڵ� ����
	@Autowired
	private SqlSessionFactory sqlFactory;
	
	//SqlSessionFactory ��ü ���� test
	@Test
	public void testFactory() {
		System.out.println(sqlFactory);
	}
	
	//MyBatis�� Mysql������ ���� �Ǿ����� test
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
