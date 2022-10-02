class Solution {
         /*
      This is multiple lines comment
      I am learning Dart for job changing.
      */
       Map<String, int> symMap = {
          "I": 1,
          "V": 5,
          "X": 10,
          "L": 50,
          "C": 100,
          "D": 500,
          "M": 1000
         };

    /// This is the base class
    /// return the value of Roman numberals
  int romanToInt(String s) {

      // DEBUG: print(symMap["V"]);
      // Calcualate here
     var result = giveMeInt(s[0]);
      // print(result);
    for (var i = 1; i<s.length; i++) {
       // print(i);
        int currentChar = giveMeInt(s[i]);
        int previousChar = giveMeInt(s[i - 1]);

         // check if a plus or a subtract
        if  (currentChar <= previousChar) {
            result = result + currentChar;
        } else {
            result = result + (currentChar - previousChar * 2);
        }
    }
    return result;
  }

    int giveMeInt (String s) {
    return symMap[s] ?? 0;
    }
}