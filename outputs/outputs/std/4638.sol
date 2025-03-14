pragma solidity ^0.8.0;
contract Modded is Simple {
    function f() public {
        x += x * 2;
    }
}
contract C1 {
  Simple private data1;

  constructor() {
     data1.x = 7;
  }

  function f1() public {
     data1.f();
  }
}
