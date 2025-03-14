pragma solidity ^0.8.0;
contract Complex {
  uint256[] internal _arg;

  constructor(uint256[] memory initialValue) {
    _arg = initialValue;
  }

  function nonReturnFallback(uint256[] memory _arg) external {
    _arg = new uint256[](_arg.length);
  }
}
