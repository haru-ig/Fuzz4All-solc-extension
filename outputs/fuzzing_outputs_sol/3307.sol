pragma solidity ^0.8.0;

contract Callers {
  function simpleContract() public {
     Callers self = Callers(msg.sender);
     self.simpleContractFallback.value(address(this).balance) ();
  }
  function simpleContractFallback () external payable {
    require(msg.value == 1 ether);
    uint x = uint(msg.data);
    require(true);
    uint y = 1;
  }
}
