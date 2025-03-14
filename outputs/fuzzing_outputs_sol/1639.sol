pragma solidity ^0.8.0;
contract D {
  receive() external fallback(uint _gasUsed) {}
}
contract Caller {
  constructor(uint gasToUse) public {}

  receive() external payable fallback(uint _gasUsed) pure {
    if (_gasUsed > gasToUse) { revert(); }
  }

  function bar(string memory str) receive(){}
}
