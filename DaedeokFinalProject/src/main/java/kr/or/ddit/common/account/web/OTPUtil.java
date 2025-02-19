package kr.or.ddit.common.account.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.SecureRandom;

import org.apache.commons.codec.binary.Base32;
import org.apache.commons.codec.binary.Hex;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

import de.taimos.totp.TOTP;

public class OTPUtil {
	
	public static void main(String[] args) {
        OTPUtil otpUtil = new OTPUtil();

        // 개인키 생성
        String secretKey = otpUtil.getSecretKey();
        System.out.println("Generated Secret Key: " + secretKey);

        // OTP 코드 생성
        String otpCode = otpUtil.getTOTPCode(secretKey);
        System.out.println("Generated OTP Code: " + otpCode);

        // 구글 OTP 인증용 링크 생성
        String account = "김민강";
        String issuer = "대덕인재개발회사";
        String googleOTPAuthURL = otpUtil.getGoogleOTPAuthURL(secretKey, account, issuer);
        System.out.println("Google OTP Auth URL: " + googleOTPAuthURL);

        // QR 코드 이미지 생성
        String filePath = "/Users/gimmingang/qrCode/QRCodeTest.png";
        int height = 300;
        int width = 300;

        try {
            otpUtil.getQRImage(googleOTPAuthURL, filePath, height, width);
            System.out.println("QR Code generated at: " + filePath);
        } catch (WriterException | IOException e) {
            e.printStackTrace();
        }	
	}
	
	   // 최초 개인키 생성 시 사용하는 메소드
    public String getSecretKey() {
        SecureRandom random = new SecureRandom();
        byte[] bytes = new byte[20];
        random.nextBytes(bytes);
        Base32 base32 = new Base32();
        return base32.encodeToString(bytes);
    }

    // OTP검증 요청 때마다 개인키로 OTP 생성하는 메소드
    public String getTOTPCode(String secretKey) {
        Base32 base32 = new Base32();
        byte[] bytes = base32.decode(secretKey);
        String hexKey = Hex.encodeHexString(bytes);
        return TOTP.getOTP(hexKey);
    }

    // 개인키, 계정명(유저ID), 발급자(회사명)을 받아서 구글OTP 인증용 링크를 생성하는 메소드
    public String getGoogleOTPAuthURL(String secretKey, String account, String issuer) {
        try {
            return "otpauth://totp/"
                    + URLEncoder.encode(issuer + ":" + account, "UTF-8").replace("+", "%20")
                    + "?secret=" + URLEncoder.encode(secretKey, "UTF-8").replace("+", "%20")
                    + "&issuer=" + URLEncoder.encode(issuer, "UTF-8").replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    // url, 파일생성할경로, 높이px, 폭px을 받아서 QR코드 이미지를 생성하는 메소드
    public void getQRImage(String googleOTPAuthURL, String filePath, int height, int width) throws WriterException, IOException {
        BitMatrix matrix = new MultiFormatWriter().encode(googleOTPAuthURL, BarcodeFormat.QR_CODE, width, height);
        try (FileOutputStream out = new FileOutputStream(filePath)) {
            MatrixToImageWriter.writeToStream(matrix, "png", out);
        }
    }
}
