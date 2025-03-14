pragma solidity ^0.8.0;
contract MutatedCounter {
   bytes32 internal x;
   mapping(bytes32 => uint) public c;
   uint xVal;
   function addX() public {
       x++;
   }
   function () public payable {
       xVal[msg.sender] ^= 1;
       c[msg.sender]++;
   }
}
