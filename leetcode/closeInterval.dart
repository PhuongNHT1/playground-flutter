class Solution {
  List<List<int>> intervalIntersection(List<List<int>> firstList, List<List<int>> secondList) {
    var count1 = 0;
    var count2 = 0;
    List<List<int>> result = null;
    List<int> subResult = null;
     while (count1 < firstList.length and count2 < secondList.length) {
         var head = firstList[count1][1];
         var tail = firstList[count1][2];
         if (firstList[count1][1] < secondList[count2][1]) {
             head = secondList[count2][1];
         }
         if (firstList[count1][2] > secondList[count2][2]) {
             tail = secondList[count2][2];
         } else {
             tail = firstList[count1][2];
         }
         subResult.add(head);
         subResult.add(tail);
        result.add(subResult);
        // inscrease counter
        count1 += count1;

     }
  }
}