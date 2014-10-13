package com.dambrevilleguyen.easybudget.helpers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class Helper {
	
	public static String readFirstLine(InputStream inputStream) throws IOException
    {
        return new BufferedReader(new InputStreamReader(inputStream)).readLine();
    }

}
