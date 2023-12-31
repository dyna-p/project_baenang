package com.bn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bn.service.EmailService;
import com.bn.service.MemberService;
import com.bn.service.PasswordEncoder;
import com.bn.service.SignupService;

@RestController
public class EmailController {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private SignupService signupService;
	
	@Autowired
	private MemberService memberService;
	
	private final EmailService emailService;

    @Autowired
    public EmailController(EmailService emailService) {
        this.emailService = emailService;
    }

    @PostMapping("/sendVerificationCode")
    public String sendVerificationCode(String userEmail) {
    	int n = emailService.checkEmail(userEmail);
    	if(n==0) {
    	emailService.sendVerificationCode(userEmail);
    	return "success";
    	}
    	return "failed";
    }

    @PostMapping("/verifyCode")
    public String verifyCode(String userEmail, String code) {
        boolean isVerified = emailService.verifyCode(userEmail, code);
        if (isVerified == true) {
            return "verified";
        } else {
            return "failed";
        }
    }
    
    @PostMapping("/resetpassword")
	public String findPw(String userEmail) {
		int n = emailService.checkEmail(userEmail);
		if(n==1) {
		emailService.sendVerificationCode(userEmail);
    	return "success";
    	}
    	return "failed";
	}
	
    @PostMapping("/verifyCode2")
    public String verifyCode2(String userEmail, String code) {
        boolean isVerified = emailService.verifyCode(userEmail, code);
        if (isVerified == true) {
        	String pass = emailService.generateVerificationCode();
        	String temppass = passwordEncoder.encrypt(userEmail, pass);
        	memberService.tempPass(userEmail, temppass);
            return pass;
        } else {
            return "failed";
        }
    }
    
}

