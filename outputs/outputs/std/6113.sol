pragma solidity ^0.8.0;
library Array {
    function min(uint32[] memory a) internal pure returns (uint32) {
       uint32 result = a[0];
       for (uint32 i = 1; i < a.length; i++) {
          result = Math.min(result, a[i]);
       }
       return  result;
    }
    function max(uint32[] memory a) internal pure returns (uint32) {
        uint32 result = a[0];
        for (uint32 i = 1; i < a.length; i++) {
          result = Math.max(result, a[i]);
       }
        return result;
    }
    function sum(uint32[] memory a) internal pure returns (uint32) {
      uint32 result = 0;

      for (uint32 i = 0; i < a.length; i++) {
          result += a[i];
       }

       return result;
    }
    function set(uint32[] memory a, uint32 new_element) internal {
        a.length++;
        a[a.length-1] = new_element;
    }
    function get(uint32[] memory a, uint32 index) internal pure returns (uint32) {
        return index < a.length? a[index] : 0;
    }
    function sort(uint32[] memory a) internal {
        uint8 j;
        uint32 n = a.length;
        for (n--; n > 0; n--) {
          for (j = 0; j < n; j++) {
            if (a[j] > a[j+1]) {
              a[j+1] = a[j];
            }
          }

          a[j] = a[j+1];
        }
    }
}
