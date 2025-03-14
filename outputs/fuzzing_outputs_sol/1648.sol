pragma solidity ^0.8.0;
contract D {
  event Bar(int v1);
  function bar(int v2) public {
    emit Bar(0);
    v2 += 1;
  }
}
contract Mutate {
  address mutd;
  constructor(address m) public {
    mutd = m;
    Caller(m).delegatecall(abi.encodeWithSignature("bar('hi ')"));
  }
}
