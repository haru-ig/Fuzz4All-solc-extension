pragma solidity ^0.8.0;
contract Caller {
  function call() pure public returns ( ) {
    bytes memory result = abi.encode(mutatedInstance.badCall(0u, 10u));
    return;
  }
}
