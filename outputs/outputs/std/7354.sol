pragma solidity ^0.8.0;
contract MyContract {
  int[] public myArr;
  function add() {
    int len = myArr.length;
    for (uint i = 0; i < len; i++) {
      myArr[i] += 1;
    }
  }
}
