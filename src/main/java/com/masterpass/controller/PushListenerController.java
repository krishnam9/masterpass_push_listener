package com.masterpass.controller;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping
public class PushListenerController {
	
	@RequestMapping(value = "/masterpass-push-listener", method = RequestMethod.GET)
	public ResponseEntity<Object> getMe(@RequestParam(value="message") String message) {
		
		System.setProperty("org.slf4j.simpleLogger.defaultLogLevel", "debug");
		System.out.println("START: Masterpass Push Listner in GET...............");
		System.out.println("Message received GET:"+message);
				
		return new ResponseEntity<Object>(message, HttpStatus.OK);

	}
	
	
	@RequestMapping(value = "/masterpass-push-listener", method = RequestMethod.POST)
	public ResponseEntity<Object> posttMe(@RequestParam(value="message") String message) {
		
		System.setProperty("org.slf4j.simpleLogger.defaultLogLevel", "debug");
		System.out.println("START: Masterpass Push Listner in POST...............");
		System.out.println("Message received POST:"+message);
				
		return new ResponseEntity<Object>(message, HttpStatus.OK);

	}
	
}