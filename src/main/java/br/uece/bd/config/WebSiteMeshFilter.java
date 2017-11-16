package br.uece.bd.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.sitemesh.content.tagrules.html.Sm2TagRuleBundle;

public class WebSiteMeshFilter extends ConfigurableSiteMeshFilter {

	@Override
	protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
		builder.addTagRuleBundle(new Sm2TagRuleBundle());
//		builder.addDecoratorPath("/*", "/WEB-INF/decorators/basic-theme.jsp");
		builder.addDecoratorPaths("/*", "/WEB-INF/decorators/header.jsp", "/WEB-INF/decorators/footer.jsp", "/WEB-INF/decorators/head.jsp");
		builder.addExcludedPath("/login");
		;
	}
}