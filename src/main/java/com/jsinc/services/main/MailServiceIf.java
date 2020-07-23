package com.jsinc.services.main;

import java.util.Map;

public interface MailServiceIf {
	public Map<String, Object> send(String email, String title, String body);
}
