package com.bn.service;

public interface EmailService {
    void sendVerificationCode(String userEmail); //�̸��� �����ڵ�����
    boolean verifyCode(String userEmail, String code); //�̸��� �����ڵ� ����
    int checkEmail(String userEmail); //�̸��� �ߺ�üũ
}