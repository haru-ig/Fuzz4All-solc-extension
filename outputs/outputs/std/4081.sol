pragma solidity ^0.8.0;
contract Multiply {



   bytes32[26] a_arr;
   bytes32[26] b_arr;



   function setAll (bytes32[26] memory a, bytes32[26] memory b) public {
     a_arr = a;
     b_arr = b;
   }



    function subset(uint[26] memory value) public view returns (uint[26]{3} memory){
      bytes32[26] memory temp1 = a_arr;
      bytes32[26] memory temp2 = b_arr;

      bool equal;
      for (uint i = 0; i < 26; i++){
        equal = bytes32(a_arr[i]) >= temp1[i];
        if (!equal){
          break;
        }
      }
      for (uint i = 26; i < 30; i++){
        equal = bytes32(a_arr[i]) >= temp2[i - 26];
        if (!equal){
          break;
        }
      }
      for (uint i = 0; i < 30; i++) {
        bytes32 result = temp1[i];
        temp1[i] = temp2[i];
        temp2[i] = result;
      }
      return temp1;
    }



    function superset(uint[26] memory value) public view returns (uint[26]{3} memory){
      bytes32[26] memory temp1 = a_arr;
      bytes32[26] memory temp2 = b_arr;

      bool equal;
      for (uint i = 0; i < 26; i++){
        equal = bytes32(a_arr[i]) <= temp2[i];
        if (!equal){
          break;
