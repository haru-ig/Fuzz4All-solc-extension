pragma solidity ^0.8.0;
contract C {
  constructor(uint)   public {
  }
}
contract D {
  constructor() public C(0) {}
}
contract K is C {

}
contract E is C {

}
contract G is K with D {}
contract I {
  function g(uint a) public pure {
    emit c();
  }
  uint8 public data = 0;
  event e(uint8 _data);
  modifier a {
    data = data + 1;
    emit e(a);
    _;
  }
  function c() a public {
  }
}
contract CImpl {
  uint private __data;
  constructor(uint _amount) public {
    __data = _amount;
  }
}
contract D is CImpl   {
}
contract G {
  function h() public pure {
    K(address(this)).f();
  }
  function g(uint a) public pure returns (address, uint) {
    (address address_0) = (address(0), 0);
    (address address_1) = address_0;
    address x;
    uint y;
    if (0 == (1U + uint24(uint64(uint128(uint224(uint32(address_1.value)[uint160(8)) + 0x1FFFFFFFFFFFFFFF + 0xF0) + uint224(uint32(x.slot)[0x8]) + 0x1FFFFFFFFFFFFFFF123000000000000000000)))) {
      (, 2) = (address(0), uint256(uint160(uint60(uint160(uint20(uint80(uint1280(uint64(uint216(uint8(address_1) + uint0)))) + uint259(uint64(address(address_0)))) + 0xF0L + address_1) + uint218(uint32(address_1) + 0xF0) + uint258(uint64(address_1) + uint20)) + uint216(uint32(x) + 0xF0) + uint257(uint64(address_1) + uint160(uint64(x)))))) + (address(0), uint256(uint160(uint32(address_1) + 0xF0) + uint255(uint64(address_1) + uint80(uint256(uint32(uint160(uint64(address(address_0) + uint
