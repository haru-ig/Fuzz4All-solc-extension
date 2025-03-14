pragma solidity ^0.8.0;
contract D {
  function bar(int v2) public {
    emit Bar(uint(-1));
  }
}
contract Caller {
  constructor(address c) public {
    c.delegatecall(abi.encodeWithSignature("bar('hi ')"));
  }
}
