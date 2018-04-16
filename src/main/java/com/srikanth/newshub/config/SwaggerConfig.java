/**
 * 
 */
package com.srikanth.newshub.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author srikanthchebrolu
 *
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {

	@Bean
	public Docket postsApi() {
		return new Docket(DocumentationType.SWAGGER_2).groupName("public-api")
				.apiInfo(apiInfo()).select().paths(PathSelectors.any()).build();
	}
	
	private ApiInfo apiInfo() {
		return new ApiInfoBuilder()
				.title("SpringBoot Application")
				.description(
						"This api is created to learn spring boot with mongo, Spring Data")
				.termsOfServiceUrl("")
				.contact("srikanthchebrolu3333@gmail.com")
				.license("Srikanth Chebrolu")
				.licenseUrl("https://about.me/srikanthchebrolu").version("1.0")
				.build();
	}

}