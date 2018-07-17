/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.checkUrl;

/**
 *
 * @author USER
 */
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;

public class getTitleURLs {

    public static String gettitleurls(String longLink) {
        InputStream response = null;
        try {

            URLConnection openConnection = new URL(longLink).openConnection();
            openConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0");
            response = openConnection.getInputStream();

            Scanner scanner = new Scanner(response);
            String responseBody = scanner.useDelimiter("\\A").next();
            return responseBody.substring(responseBody.indexOf("<title>") + 7, responseBody.indexOf("</title>"));

        } catch (IOException ex) {
            ex.printStackTrace();
            return null;
        } finally {
            try {
                response.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }

    }

    public static void main(String[] args) {
//        System.out.println("Thuận Đỗ");
        System.out.println(gettitleurls("https://wiki.jenkins.io/display/JENKINS/Pipeline+Maven+Plugin"));
    }

}
