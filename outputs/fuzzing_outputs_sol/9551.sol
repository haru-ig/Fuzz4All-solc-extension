pragma solidity ^0.8.0;
contract Bar {
  function baz(Foo foo, uint) public {
    foo.bar();
  }
}
