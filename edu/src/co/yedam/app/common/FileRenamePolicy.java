package co.yedam.app.common;

import java.io.File;
import java.io.IOException;

public class FileRenamePolicy {
	public static File rename(File f) {             //File f는 원본 파일
	    if (!f.exists()) return f;        //생성된 f가 중복되지 않으면 리턴, file 존재안하면 false
	     
	    String name = f.getName();
	    String body = null;
	    String ext = null;
	 
	    int dot = name.lastIndexOf(".");
	    if (dot != -1) {                              //확장자가 없을때
	      body = name.substring(0, dot);
	      ext = name.substring(dot);
	    } else {                                     //확장자가 있을때
	      body = name;
	      ext = "";
	    }
	 
	    int count = 0;
	    //중복된 파일이 있을때
	    //파일이름뒤에 a숫자.확장자 이렇게 들어가게 되는데 숫자는 9999까지 된다.
	    while (f.exists() && count < 9999) {  //파일 있으면
	      count++;
	      String newName = body + count + ext; //파일이름 새로 만듬
	      f = new File(f.getParent(), newName);
	    }
	    return f;
	  }
	 
}
