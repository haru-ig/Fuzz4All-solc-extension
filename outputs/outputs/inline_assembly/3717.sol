pragma solidity ^0.8.0;
contract SemanticallyEquivalent3a is SemanticallyEquivalent4 {

   uint256 constant constantValue = 255;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent3b is SemanticallyEquivalent3a {
  function c() view internal returns (int) {
    uint i = 0;
    uint _count = 0;
    uint x = constantValue;
    x = constantValue;
    if (i < 50) {
        {
            uint256 _h = constantValue;
            _h = constantValue;
            if (_count > 1000) {
                _h = constantValue;
            }
            }
        }
    return int(_h);
  }
}
