pragma solidity ^0.8.0;

contract A {}
contract B {}
contract Caller {
  function call(address dest, uint srcAmount, bytes memory data) returns(uint data) {
    if(dest.call{ value: srcAmount }(data)) {
      return 5;
    } else {
      return 7;
    }
  }
}
contract C {
  function aFunc() public {
    if(0 < 1) {}

    if(1 > 0) {}
  }
}
contract D {
  function bFunc() public {
    if(0 < 1) {
      C(this).aFunc();
    }

    if(1 > 0) {
      C(this).aFunc();
    }
  }
}
