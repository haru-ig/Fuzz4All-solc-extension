pragma solidity ^0.8.0;
library P{
    function f(uint b, uint c) public pure returns (uint, uint) {
        return (42,b>=c);
    }
}
contract Test{
    address a;
    uint[] expected = [x,y];
    function foo() public pure {
    }
}
contract C{
    struct S{uint a;}
    function g(address _a, uint[] b, Test _c, uint _d, uint _e, uint _f, uint _g) public pure {
        b[_d] = 1;
    }
}
contract C2{
  uint constant x = 1;
  struct S{uint a;}
  function check(uint c) internal view {
  }
  function f(address _a, uint _b, uint _c) public pure returns (uint) {
    uint c=x;
    c = 2;
    check(1);
    c = 3;
    check(x);
    c = 4;
    check(c);
    c = 5;
    check(2);
    c = 6;
    check(3);
    c = 7;
    check(4);
    c = 8;
    check(5);
    c = 9;
    check(0);
    return c;
  }
  receive () payable {
  }
}
contract C3{
    struct S{uint a;}
    function f(uint _a) public pure returns (uint) {
      uint b;
      b = 42;
      return 1;
    }
    function g(uint _a, uint _b, uint _c, uint _d, uint _e, uint _f) public pure {
      uint b1=f(_b);
      uint b2=f(_b);
      assert(b1==5);
      assert(b2==5);
      b1 += 1;
      assert(b1==6);
      b2 += 1;
      assert(b2==6);
    }
}
contract C4{
    struct S{uint a;}
    function f(uint _a, uint b, uint c, uint d) public pure returns (uint) {
      uint c1=P.f(b, c);
      uint c2=P.f(b, c);
      assert(c1==6);
      assert(c2==6);
      uint e;
      e += 1;
      assert(e==1);
      c1 += 1;
      assert(c1==7);
      c2 += 1;
      assert(c2==7);
      b += 1;
      assert(b==2);
    }
    function g(uint _a, uint _b, uint _c, uint _d, uint _e)
