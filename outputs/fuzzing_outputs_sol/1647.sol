pragma solidity ^0.8.0;
contract D {
  event Bar(int v1);
  function bar(int v2) public {
    emit Bar(0);
  }
}
contract Caller {
  constructor(address c) public {
    c.delegatecall(abi.encodeWithSignature("bar('hi ')"));
  }
}
