package com.srikanth.newshub.service;

import java.net.MalformedURLException;
import java.net.URISyntaxException;

import com.srikanth.newshub.domain.*;

public interface NewsService {

	public News getNewsFromSource(String s) throws URISyntaxException,
			MalformedURLException;

	public Source getAllSources();
}
