pragma solidity ^0.8.0;

contract SemanticallyEquivalent2_3 {
  uint256 constant constantValue = 125;
  uint internal constantValue2 = 0xfffffffffffffff000000000000000;
  function h() internal view returns (uint256) {
    uint x = constantValue + constantValue;
    x = constantValue2 * x;
    x = x + constantValue2;
    return x;
  }
}
