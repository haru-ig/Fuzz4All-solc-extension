pragma solidity ^0.8.0;
 interface iface {}
 contract A {
     function f() external {

          iface X = B();
      }
  }
  contract B is iface {
     function f() external {    }
  }
struct Fizz {
     uint8 t;
}

pragma solidity ^0.8.0;
library libA  {
    using A as Fizz;
    using A as A;
  }
library libB {using B as Fizz; }
contract A{
    constructor() public
    {}
    modifier
    _noInline() {
        _;
    }
    function f() public
    {

        inline();
        f();
        noinline();
    }

    inline function inline() private pure{
        asm {


        }
    }
    noinline function noinline() public pure{
        uint256 a;


        a = a + 1;
    }
}
contract B{
     A a;
}
contract C {
     struct A {
       uint i;
    }

    struct B {
       struct C {
         uint8 t;
       }
     }
 }
  contract A is B, C, libA, libB {
    function a() public pure virtual override {

    }
}
struct C is A {
    uint i;
}

 contract Test {


    uint256 x;
    uint constant p = 128;

    constructor() public
    {
      x = 10;
    }

    function f() external pure returns(bool)
    {
        assert(x == 10);
        return true;
    }

    function g() public returns(uint)
    {
        assert(x == 10);
        return x;
    }

    function h() public
    {
        assert(x == 10);
    }

    function i() public returns(uint)
    {
        assert(x == 10);
        return 101;
    }
}

 contract Test0 {

  uint256 x;
  uint constant p = 128;

  constructor() public
  {
      x = 10;
      x = 101;
      x = 101100;
  }

  function f() public pure returns(uint)
  {
      assert(x == 10);
      return 11;
  }








  function h() public
  {
      assert(x == 10);
  }
