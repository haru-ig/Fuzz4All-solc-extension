pragma solidity ^0.8.0;
contract Mutate30Test {

   uint[41] public x;


   uint u1;
   uint u2;
   uint u3;
   uint u4;
   uint u5;
   uint u6;
   uint u7;
   uint u8;
   uint u9;
   uint u10;
   uint u11;
   uint u12;
   uint u13;
   uint u14;
   uint u15;
   uint u16;
   uint u17;
   uint u18;
   uint u19;
   uint u20;
   uint u21;
   uint u22;
   uint u23;
   uint u24;
   uint u25;
   uint u26;
   uint u27;
   uint u28;
   uint u29;
   uint u30;
   uint u31;
   uint u32;
   uint u33;
   uint u34;
   uint u35;
   uint u36;
   uint u37;
   uint u38;
   uint u39;
   uint u40;
   uint u41;

   constructor(uint[21] memory x_) {
	   x = x_;
   }

   function _test(uint[] memory arrays) private {

	   x[0] = int(x[0]);

	   x = arrays;
	   x = arrays;
	   x[0] = x[0];

	   x = arrays;
   }



   function test() public {
	   uint[] memory arrays = uint[42] (
	   [1,2,3,99,54,999,1,0,0,1000,0,2,3,45,90,0]);

	   this.test();

	   _test(arrays);

   }
}
