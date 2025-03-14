pragma solidity ^0.8.0;
contract MutatedInterface53_v3 is Interface53_v3 {
	function testEvent() external payable {
       try Interface53_v3(keccak256(abi.encodePacked(address(this), msg.sender.balance))+keccak256(abi.encodePacked(address(this), msg.sender.balance))) {}
       _;
   }
}
