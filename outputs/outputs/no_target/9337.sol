pragma solidity ^0.8.0;
contract semanticallyEquiv10
{
  function f0(uint a) public pure returns (uint c) { c = a; return a; }
}
contract semanticallyEquiv11
{
  function f0(uint a) public pure { a = uint(x); }
}
contract semanticallyEquiv12
{
}
contract semanticallyEquiv13
{
}
contract semanticallyEquiv14
{
}
interface semanticallyEquiv15
{
  function f0(uint a) public pure returns (uint);
}
contract semanticallyEquiv16
{
  function f0(uint a) public pure returns (uint) {
    for (uint i = 0; i < 100; i++) {
      uint _c = 69;
      uint _d = 87;
      c = 5 * uint(_c + _c);
      d = 3 * uint(_d - a);
      b = 4 * _c;
      e = d - b;
    }
    i = 3;
    for (;;) i;
  }
}
contract semanticallyEquiv17
{
  mapping(address => mapping(address => mapping(address => uint)))
    public x;
}
contract semanticallyEquiv18
{
  struct I { uint _x; }
  uint y;
  function f(I x) public pure returns (address) { return x.i; }
}
contract semanticallyEquiv19
{
  struct I { uint _x; }
  uint y;
  function f(I x) public pure returns (address) { do { i = x.i; } while (i < 100); }
}
contract semanticallyEquiv20
{
  struct I { uint _x; }
  uint y;
  function f(I x) public pure returns (address) { do { i = x._x; } while (i < 100); }
}

pragma solidity ^0.8.0;
contract semanticallyEquiv3
{
  uint public x;
  address public y;
  uint public z;
  constructor() public {
    y = 0xD0BADEAFDEADBEEFDEADBEEFDEBDABCDEEF;
    z = uint(_x) + uint(y);
  }
}
