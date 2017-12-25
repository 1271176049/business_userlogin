package com.sdp.edu.utils;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class MyRoutingDataSource extends AbstractRoutingDataSource {
	// private static String key;
	private static ThreadLocal<String> threadlocal_key = new ThreadLocal<>();

	public static String getKey() {
		return threadlocal_key.get();
	}

	public static void setKey(String key) {
		threadlocal_key.set(key);
	}

	public static void clear(String key) {
		threadlocal_key.remove();
	}

	@Override
	protected Object determineCurrentLookupKey() {
		// 这里返回dataSource的key
		return threadlocal_key.get();
	}

}
