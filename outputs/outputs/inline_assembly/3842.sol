pragma solidity ^0.8.0;
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _c = uint(_c) / 3;
    _h = _c;
    address _q_;
    assembly { _q_ := _q }
    _h = _q_;
    address _p_;
    assembly { _p_ := _p }
    address _c_;
    assembly { _c_ := _c }
    uint[] memory memoryVar = [uint(address(_q)]), uint(address(_p)), uint(address(_c))];
    assembly { _c := 0 }
    uint _h_;
    assembly { _h_ := 0 }
    for (uint i; i < 3; i++) {
      uint _var_;
      assembly { _var_ := mload(add(memoryVar, i)) }
      _var_++;
      uint _var__temp_;
      assembly { _var__temp_ := add(uint(constatValue), constatValue) }
      mstore(add(memoryVar, i), _var__temp_)
      mstore(add(memoryVar, i), _var_)
    }
    uint_0x807188123456;
    uint_0x8031881234567890;
    uint_0x8077812;
    uint_0x808078123455;
    uint_0x8ad0817012345678;
    uint_0x80188122567890124;
    uint_0x92748af5678901245;
    uint_0x8
