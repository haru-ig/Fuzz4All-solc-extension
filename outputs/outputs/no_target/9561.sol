pragma solidity ^0.8.0;
interface Interface60_v2_0 {
   function testEvent() external payable;
}
contract Interface60_v2_1 is Interface60_v2_0 {
   function testEvent() external payable;
   function testEvent(uint64) external payable;
   function testEvent(uint16) external payable;
   function testEvent(uint256) external payable;
}
