pragma solidity ^0.8.0;
contract Modifications4{
  uint256 public a;
  uint256[] arrays;
  constructor(uint256 x, uint256 y) public {
    uint256 x2 = x * y;
    a = x2 + x;
    arrays.push(x2);
    arrays.push(x);
  }
  function Modification4(uint256 s, uint256 i) public {
    uint256 x = s * i;
    a = x + s;
    for (uint256 j = 0; j < arrays.length; j++) {
      uint256 x2 = s * arrays[j];
      a = x + s;
    }
    b = x + s;
  }
}
library Modifications5{
  uint256 public constant f = 0x0;
  function f2() constant returns (uint) {
  }
  uint256 public constant f3 = 0;
  function f3() constant returns (uint) {
  }
  function f4() constant returns (uint) {
  }
}
