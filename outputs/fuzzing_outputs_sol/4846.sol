pragma solidity ^0.8.0;
contract Duplicator {
   function payWithFallback(address payable _contractA, address payable _contractB) public payable {

      _contractA.transfer(1 ether);
   }
}
