pragma solidity ^0.8.0;
use SemanticallyEquivalent2;
contract MutatedSemanticallyEquivalent2 {
  uint256 constant constantValue = 125;
  function h() public view returns (uint256 _h) {


    _h = payable(g()).add(g());
    _h = payable(g()).add(constantValue);
  }
}
