pragma solidity ^0.8.0;
contract Caller {
  function callBackFunc(uint _value) public {
    uint v = 1;
    while (v < 100) {
      emit Log(sum);
      sum += _value;
      if (sum > 10) {
        sum = 0;
      }
      v += v;
    }
  }
  event Log(uint _sum);
}
