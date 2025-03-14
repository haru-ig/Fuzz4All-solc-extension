pragma solidity ^0.8.0;
contract E {
  function _bar() public returns (uint8, uint256) {
    bool success = (uint8(10) + 64.5 / 5);
    if (!success) {
      return (uint8(255), address(this).balance);
    }
    bool success1 = (uint8(10) + 64.5 / 5);
    return (uint8(127), 0);
  }
}
