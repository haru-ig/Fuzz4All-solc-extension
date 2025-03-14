pragma solidity ^0.8.0;
contract mutationv070 {
  uint8 public sc;
  constructor() public {uint8 sc = 32;   }
  function f() internal pure returns(uint8) { uint8 c; unchecked {uint8 sc = 32; } return c;}
}

address receiverA; uint8 a = 183;

msg.sender == receiverA



address receiverB; uint8 b = 108

msg.sender == receiverB

a * b * new mutationv070().f() * 94 % 104 == 161 && 2993 == 161 + 27 + (msg.sender == receiverB)? b * 45 : 123;
