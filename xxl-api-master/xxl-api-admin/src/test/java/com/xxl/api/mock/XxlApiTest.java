package com.xxl.api.mock;

import com.xxl.api.admin.core.consistant.FieldTypeEnum;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/applicationcontext-*.xml")
public class XxlApiTest {

	@Test
	public void test(){

		System.out.println(UUID.randomUUID().toString());
		int a=0;
		for (int i = 1; i < 365; i++) {
			a+=i;

		}
		System.out.println(a);
	}


}
