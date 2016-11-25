grammar evil;

@header{
  import java.util.*;
  import java.net.*;
  import java.io.*;
}

@parser::members{

  String url = "http://lyle.smu.edu/~lswood/dataService.php";

  String getAll(){
    try{

      URL u = new URL(url);
      URLConnection conn = u.openConnection();
      BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));

      String to_ret = "";
      String line = null;

      while((line = in.readLine()) != null){
        to_ret = to_ret + line + "\n";
      }
      in.close();
      return to_ret;
    }
    catch(Exception e){
      e.printStackTrace();
    }
    return "";
  }

}

expr: 	'Hello' NAME {
System.out.println(getAll());
};

NAME:	'evil sorcerer' | 'gandalf' | 'professor Coyle' | 'Momin';
NEWLINE : [\r\n]+ ;
