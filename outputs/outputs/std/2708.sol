pragma solidity ^0.8.0;
contract NonConstant {
   uint8 constant  = 1;
   mapping(uint8 => uint8) constant = [1,2, 3];
   mapping(uint8 => uint8) public constant = [1,2, 3];

   function do() public pure {
      uint8 a1 = constant;
      uint8 a2 = ONE;
      uint8 a3 = ONE;
      uint8 a4 = ONE;
      uint8 a5 = ONE;
      uint8 a6 = 1;
      uint8 a7 = ONE;
      uint8 a8 = ONE;
      uint8 a9 = ONE;
      uint8 a10 = 1;
      uint8 a11 = 2;
      uint8 a12 = 3;
      uint8 a13 = 1;
      uint8 a14 = 2;
      uint8 a15 = 3;
      uint8 a16 = ONE;
      uint8 a17 = ONE;
      uint8 a18 = ONE;
      uint8 a19 = ONE;
      uint8 a20 = ONE;
      uint8 b1 = 10;
      uint8 b2 = 30;
      uint8 b3 = 9007199254740992;
      uint8 b4 = 9007199254740992;
      uint8 b5 = 384;
      uint8 b6 = ONE;
      uint8 b7 = ONE;
      uint8 b8 = ONE;
      uint8 b9 = ONE;
      uint8 b10 = 1;
      uint8 b11 = 2;
      uint8 b12 = 3;
      uint8 b13 = 1;
      uint8 b14 = 2;
      uint8 b15 = 3;
      uint8 b16 = ONE;
      uint8 b17 = ONE;
      uint8 b18 = ONE;
      uint8 b19 = ONE;
      uint8 b20 = 10;
      uint8 b21 = 20;
    }
}
