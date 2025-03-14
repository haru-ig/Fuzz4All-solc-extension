pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  constructor() public {
    address payable c2 = 0x12345678900000000000000000000;
    (uint x, uint y, uint z) = (1, 2, 3);
    c2._foo.value(1)();
    c2.bar(4*x);
    c2._baz.value(5)();
    SemanticallyEquivalent22(c2);
    c2.foo(0);
  }

  function _foo() public pure virtual returns (uint i) {  }

  function bar(uint x) public pure virtual returns (uint i) {
    return x;
  }

  function _baz() public pure virtual { }
  function SemanticsEquivalent22(address payable _address) public pure {
    uint a00 = _address._foo(0);
    uint a01 = _address.bar(0);
    uint a02 = _address._baz(0);
    uint a03 = 0x7890;
    uint a10 = _address._foo.value(0)();
    uint a11 = _address.bar.value(0)(0);
    uint a12 = _address._baz.value(0)();
    uint a13 = 0x1234;
  }
  function SemanticallyEquivalent1() public pure {
    address payable c2 = 0x1234567890000000000000000000000;
    (uint x, uint y, uint z) = (1, 2, 3);
    SemanticallyEquivalent2(_address payable c2)();
    c2.bar.value(0)(0)();
    SemanticallyEquivalent21(c2);
    c2.foo();
  }
}
