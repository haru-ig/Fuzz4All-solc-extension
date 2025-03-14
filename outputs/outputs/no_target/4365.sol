pragma solidity ^0.8.0;
contract K {

  uint256 public x;

  modifier m(uint256 x1) {
    x = x1;
    _;
  }

  function m1(uint x1) public m(x1) { }

  function m2(uint x2) public m(x2) { }

  function m3(uint x3) public m(x3) { }

}
contract R {

  uint public z;

  modifier m(uint e) {

    if (e!= z) { revert(); }
    _;
  }

  function g() public m(z) { }
}
contract T {
  address public addr;
  modifier m(address a) {
    if (addr!= a) { revert(); }
    _;
  }
  constructor() {
    addr = msg.sender;
  }
  function f()
    public
    m(addr)
  { }

}
contract O is T {
  function f()
    public
  { }
}
contract P {

  function f(uint256 x) public pure { }
}

pragma solidity ^0.8.0;
contract C {
  address payable public pay;
  constructor(uint256 x) {
    pay = address(uints[x%2]);
  }
  function m(uint256 x) public returns(uint y) {
    y= uints[x%2];
  }
}
contract U {

  struct T {  }
  mapping (uint24 => T) uint24s;
  mapping (T => uint24) s24uint;
  bool s42;

  modifier m() {
    uint24 a;
    uint24 b;
    for (a = 0; a < 1000; a++) {
      T(uint24s[a]).x;
    }
    for (b = 0; b < 1000; b++) {
      s24uint[T(uint24s[b])] = uint24(s24uint[T(uint24s[b])]);
    }
    for (b = 0; b < 1000; b++) {
      uint24 c = s24uint[T(uint24s[b])];
      for (uint24 d = 0; d < 1000; d++) {
        {
          uint24 e = s24uint[T(uint24s[d])];
        }
        s24uint[T(uint24s[d])] = c;
      }
    }
    for (b = 0; b < 1000
