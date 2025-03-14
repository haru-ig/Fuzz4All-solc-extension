pragma solidity ^0.8.0;
contract SemanticallyEquivalent2_4 {
  function h() view internal returns (uint256 h1) {
    uint256 h1 = constantValue;
    uint256 h2 = constantValue + constantValue;
    h1 = h1 + h2;
    return h1;
  }
  uint256 constant constantValue = 125;
}
