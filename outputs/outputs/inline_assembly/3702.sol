pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
    uint256 constant constantValue1 = 125; uint256 constant constantValue2 = 987;
    function get(uint256 x) view internal returns (uint256) {
      uint256 _return; uint256 _div; _div = constantValue1 + constantValue2; _return = x / _div;
      return _return - _return / (constants.value - 6);
    }
}
