pragma solidity ^0.8.0;
contract C {
   uint16 public x;
   uint16 internal y;
   uint16 constant S = lib.S;
   uint public constant c = 1;
   uint internal constant y_ = 2;
   function f() public {
     uint[8] memory x;
     x[0] = 1;
     x[1] = 2;
     x[2] = 3;
     x[3] = 4;
     x[4] = 5;
     x[5] = 6;
     x[6] = 7;
     x[7] = 8;
     x[0] = S;
     x[1] = 0;
     x.push(4);
     x[4] = 10;
     uint[8] memory y;
     y[0] = S;
     for(uint i = 0; i<9; i++) {
        i<4 && 6;
     }
     return;
   }
   function g() public view returns(uint) {
     return get_element();
   }
   function h() public view returns(uint,uint) {
     return get_element_2();
   }
   uint internal get_element() public returns (uint) {
     uint[8] memory z;
     z[0] = 1;
     uint[8] memory x;
     x[2] = 3;
     uint[8] memory y;
     y[0] = S;
     uint[8] memory x_;
     x_[0] = 1;
     for(uint i = 0; i<5; i++) {
      x_[i] = 7;
     }
     y[3] = 9;
     uint[8] memory x___ = new uint[](x[1]);
     uint[8] memory y__ = new uint[](x);
     uint[8] memory y___ = new uint[](x_[1]);
     uint[8] memory z___ = new uint[](2);
     uint[8] memory y___;
     uint[8] memory z___;
     for(uint i = 0; i<5; i++) {
       y___ = x;
       for(uint j = 1; j<=6; j++) { x[j] = x[j-1]; }
    }
    }
    uint internal get_element_2() public returns (uint,uint) {
      uint[8,8] memory x;
      x[0,0] = 1;
      uint[8,8] memory y;
      y[0,0] = S;
      uint[8,8] memory x_;
      x_[0,0] = 1;
      for(uint i = 1; i<3;
