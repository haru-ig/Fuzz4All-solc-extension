pragma solidity ^0.8.0;
contract Mutator7 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be < 500");
     _;
 }
 function testMethod(bytes32 b, uint256 a) public doUpTo(1)  returns(uint256) {
     a = 8;
 }
}

```
