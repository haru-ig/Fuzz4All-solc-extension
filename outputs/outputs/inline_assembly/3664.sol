pragma solidity ^0.8.0;
contract MutatesUsingYulWithSemantics {
  uint256 internal immutable g;
  modifier mutating() {
    if(lastCallAddress!= msg.sender) revert();
    lastCallAddress = msg.sender;
    _;
  }
  constructor(uint256 _g) {
    g = _g;
  }
  function changeGeneCount(uint256 _g) public mutating {
    g = _g;
  }
  function getGeneCount() public view returns (uint256) {
    return g;
  }
  uint256 private lastCallAddress;
}
contract MutatesUsingYulWithoutSemanticsAndWithoutAssembly {
  uint256 private g;
  constructor(uint256 _g) {
    g = _g;
  }
  function changeGeneCount(uint256 _g) public {
    g = _g;
  }
  function getGeneCount() public view returns (uint256) {
    return g;
  }
}
