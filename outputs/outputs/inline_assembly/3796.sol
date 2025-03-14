pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() public returns (uint) {
    uint256 _h = uint256(
      (
        constantValue
      )
    );
    uint h = uint(uint8(h));
    uint a = uint8(uint256(uint(h >> 1)));
    return a;
  }
}
