pragma solidity ^0.8.0;
contract SemanticallyEquivalent11 {
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue()
    }
    _h = 2000;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue()
    }
    return uint(_h);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue()
    }
    _h = 2000;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue()
    }
    return uint(_h);
  }
}


```
<!--
