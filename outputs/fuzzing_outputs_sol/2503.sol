pragma solidity ^0.8.0;
contract NotEmptyCaller {
  function doSomething(address _receiver) public pure {
    Caller c = new Caller();
    assembly {
      calldatacopy(0, 0, calldatasize())
      let returnAddress := 0
      sstore(returnAddress, returnAddress)
      c.receive.value(msg.value)(_receiver, returnAddress)
    }
  }
}
