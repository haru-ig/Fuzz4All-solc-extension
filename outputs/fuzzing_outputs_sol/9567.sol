pragma solidity ^0.8.0;
contract MutatedCaller {
  address payable _contractA;
  address payable _contractB;
  function fallback(uint amount) external payable {   }
  function mutate() public {   }
}
