pragma solidity ^0.8.0;
contract SemanticallyEquivalent3_3 {
  function h() view public returns (bytes32 h) {
    uint256 h1 = constantValue;
    uint256 h2 = constantValue + constantValue;
    h = "0xBADA FUCKING BADA".hash();
    return h ^ 0xC0DE00DE ^ h1 ^ h2;
  }
  function h() view internal returns (bytes32 h) {
    uint256 h1 = constantValue;
    uint256 h2 = constantValue + constantValue;
    h = "0xBADA FUCKING BADA".hash();
    return h ^ "0xC0DE00DE" ^ h1 ^ h2;
  }
  uint256 constant constantValue = 125;
}
