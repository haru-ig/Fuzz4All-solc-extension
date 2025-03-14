pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint[4] private _a = array;
  function a(uint v) {
    _a[uint8(uint16(v))] = v;
  }
  modifier m(uint i) { a(v); i++; }
  function g(uint v) returns(uint256) {
    uint8 i = uint8(uint16(v));
    while(true) {
      a(v);
      uint256 _;
      assembly {
        _ := _a[i]
      }
      uint i_ = i + constant.value;
      if(i_ == v)
        return _;
      i = i_;
    }
  }
}
contract Crowdsale {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    address payable payee;
    uint _a;
    uint _b;
    assembly {
      _a := _c
      _b := 1000
    }
    address wallet = payee;
    wallet.transfer(_a);
    address[] memory recipients;
    uint _c;
  }
}
contract SemanticallyEquivalence13 {
  uint constant constantValue = 1000;
  function x() returns(uint) public pure {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
    return uint(_c);
  }
}
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1000;
  constructor public {
    uint y;
    uint _h;
    assembly {
      _h := constantValue
      y := add(add(y, constint(1)), _h)
    }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
  }
}
contract SemanticallyEquivalent15 {
  uint[4] private _a = array;
  function a(uint v) public {
    _a[uint8(uint16(v))] = v;
  }
  modifier m(uint i) {
    address payable payee = payable(this);
    a(v);
