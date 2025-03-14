pragma solidity ^0.8.0;
interface I1a {
    function f() external returns (uint[] memory memory2);
}

interface I2b {
    function k() external returns (uint[] memory memory2);
}

 contract C1 {
     I1a public obj1;
     uint[] memory obj12;
     uint[] memory public obj2;
     uint[] memory [] public public_obj;

 }
 contract C2 {
     I2b public obj1;
     I2b [] public obj12;
     I2b [] memory public obj2;
     I2b [] memory [] public public_obj;

     function f(uint[] memory memory1) public returns (uint[] memory memory3){
           uint[20] memory emptyArr = new uint[](0);
           memory public_arr = new uint[17];
     }

     function test1() public {
           uint[] memory memory1 = new uint[](0);
     }

     function g2(uint[] memory memory1) public {
           uint[] memory memory1 = new uint[](0);
     }
 }
 contract C3 {
     I2b public obj1;
     I2b [] memory public obj12;
     I2b [] memory [] public obj2;
     I2b [] memory [] [] public public_obj;

     constructor(I1a memory1)public C1(memory1){
     }

 }

 contract C3a {
     I2b public obj1;
     I2b [] public obj12;
     I2b [] [] public obj2;
     I2b [] [] [] public public_obj;

     constructor(I1a memory1)public C1(memory1){
     }

 }
 contract C4 {
     I2b public __obj1;
     I2b __obj2;
     I2b [][] __a_obj1;
 }
