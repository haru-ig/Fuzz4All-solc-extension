pragma solidity ^0.8.0;
contract Mutator8 {
 modifier doUpTo(uint256 index) {
     require(index < 500, "must not be > 500");
     _;
 }
 function testMethod1(bytes32 b, uint256 a) public {
     a = 8;
 }
 function testMethod2(bytes32 b, uint256 a) public {
     a = 8;
     uint256 c = a + 2;
 }
 function testMethod3(bytes32 b, uint256 a) public {
     a = 8;
 }
}
