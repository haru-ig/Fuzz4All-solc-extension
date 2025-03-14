pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
  function h() view internal returns (int) {
    uint256 _h = constantValue;
   uint256 _count = 0;
   uint256 v = 0;
   bool v2= _h%2 == 0;
   if (!v2) {
       _count++;
       _h += constantValue;
       uint256 _counta = 0;
       for (; _counta < 50; _counta++) {
           _h += constantValue;
       }
    } else {
            _count++;
             _h += constantValue ;
             _h += constantValue;
    }
    return int(_h);
  }
  uint256 constant constantValue = 125;
}

contract SemanticallyEquivalent6 {
  function h() view internal returns (int) {
    uint256 _h = constantValue*constantValue2;
    uint256 i = 0;
    uint256 _count = 0;
    _h = constantValue;
    if (i == 1) {
        _count++;
        _h += constantValue;
        for (_count = 0; _count < 100; _count++) {
            _h += constantValue;
        }
    }
    return int(_h);
  }
  uint256 constant constantValue = 9;
  uint256 constant constantValue2 = 4;
}
