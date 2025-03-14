pragma solidity ^0.8.0;
contract C2 {
   function f1_1(uint _value) public pure {
       _value = _value * 2;
   }
   function f1_2(int _value) public pure {
       _value *= 2;
   }
   function f1_3(uint _value) public pure {
       _value /= 2;
   }
   function f1_4(int _value) public pure {
       _value /= 4;
   }
   function f1_5(uint _value) public pure {
       _value = _value + 1;
   }
   function f1_6(int _value) public pure {
       _value += 1;
   }
   function f1_7(uint _value) public pure {
       _value = _value - 1;
   }
   function f1_8(int _value) public pure {
       _value -= 1;
   }
   function f1_9(bool _b) public pure {
       if (_b) {
       _b = false;
       } else
        _b = true;
   }
 bool func10() public pure returns (bool){
       _b =!_b;
       return _b;
   }
   uint func11() public pure returns (bool){
       return!false;
   }
   int func12() public pure returns (bool){
       return!-12;
   }
   address func13() public pure returns (bool){
       return!0xADDad47C9d4F3fAAe388209773D510753C485D2C;
   }
   string func14() public pure returns (bool){
       return true;
   }
   uint func15() public pure returns (bool){
       uint res = (uint(this).length * 70);
       return res;
   }
   int func16() public pure returns (bool){
       int res = (int(this).length * 15);
       return res;
   }
   uint func17() public pure returns (bool){
       uint _17=uint(this).length * 20;
       _17++;
       return 17;
   }
   int func18() public pure returns (bool){
       int _18=int(this).length * 18;
       _18++;
       return 18;
   }
   address func19() public pure returns (bool){
       address _19=address(uint(this).length * 80);
       _19++;
       return 19;
   }
   string func20() public pure returns (bool){
       bool _20=true;
       return _20;
   }
   uint func21() public pure returns (bool){
       uint _21=uint(this).length *
