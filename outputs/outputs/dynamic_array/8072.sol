pragma solidity ^0.8.0;
contract Test54 {
    struct Foo {
      uint x;
    }
    struct Bar {
      address x;
    }
    Foo[8] b;
    function foo() public {
      b[1].x = address(1);
      b[2].x = address(2);
    }
    function bar() public {
      uint32 x = uint32(Foo(12).x);
    }
}
