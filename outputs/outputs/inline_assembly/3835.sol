pragma solidity ^0.8.0;
contract SemanticallyEquivalent1 {
  uint public constant constantValue = 1000;
  bool public immutable constant immutableValue = true;
  uint32 constant constantValue2;
  bool constant constantValue3;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue,
      constantValue2 := constantValue * constantValue,
      constantValue3 := constantValue <= constantValue2
    }
    uint _c;
  }
  function z() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    _c = uint(_h);
    return uint(_c);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  uint public constant constantValue = 1000;
  uint constant constantValue2;
  bool constant constantValue3;
  uint constant constantValue4 = constantValue - constantValue2;
  uint constant constantValue5;

  constructor () {
    uint _h = constantValue4;
    uint _c;
    assembly {
      constantValue2 := constantValue * constantValue,
      _c := constantValue * constantValue2
    }
    uint _h2 = constantValue5;
    uint _c2;
    assembly { _c2 := constantValue5 }
    _h2 = uint80(_h);
    uint _c3;
    assembly {
      _c3 := uint80(_c);
      _h2 := _c3 / 0x20000000
    }
    uint _c4 = _c2 / constantValue;
    uint _c5;
    assembly { _c5 := _c4 }
  }

  function y() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint _h2;
    assembly { _h2 := constantValue2 }
    uint _c2;
    assembly { _c2 := constantValue2 }
    uint _c3;
    assembly {
      _c3 := uint80(_h2);
      _h2 := _c3 / 0x20000000
    }
    uint _c4 = _h / constantValue
