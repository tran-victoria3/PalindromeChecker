
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{ 
 
   word = word.toLowerCase(); 
   String output = new String();
  for(int i =0; i < word.length(); i++){
   if(Character.isLetter(word.charAt(i)) == true){
     output += word.charAt(i);
   }
 }
   int last = output.length() - 1;
 for(int i =0; i < (output.length())/2; i++){
  if(output.charAt(i) != output.charAt(last)){
    return false;
  }
  else{
    last--;
      }
    }
  return true;
} 
