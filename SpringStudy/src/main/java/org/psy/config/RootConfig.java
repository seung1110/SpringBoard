package org.psy.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@MapperScan(basePackages={"org.psy.mapper"}) // mybatis mapper
@ComponentScan(basePackages={"org.psy.domain"})
public class RootConfig {
	
	@Bean
	public DataSource dataSource(){
		HikariConfig hikariConfig = new HikariConfig(); // hikari cp라이브러리를 통해 생성
		hikariConfig.setDriverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
		hikariConfig.setJdbcUrl("jdbc:log4jdbc:oracle:thin:@localhost:1521:XE"); // oracle xe 설정
		
		hikariConfig.setUsername("psy");
		hikariConfig.setPassword("1234");
			
		HikariDataSource dataSource = new HikariDataSource(hikariConfig); // config를 통해 datasource 생성
		return dataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception{
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(dataSource()); // 바로 위의 dataSource 생성 메서드
		return(SqlSessionFactory) sqlSessionFactory.getObject();
	}
	
	
}
