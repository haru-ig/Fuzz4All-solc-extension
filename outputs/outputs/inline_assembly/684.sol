pragma solidity ^0.8.0;
contract Mutator8 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be < 500");
     _;
 }
 function testMethod(bytes32 b, uint256 a) public {
     assembly {
         a = a + 8
         calldatacopy(0x0, 0x20, returndatasize)
         log0(a)
         mstore(0x0, mload(0x0))
     }
 }
}
