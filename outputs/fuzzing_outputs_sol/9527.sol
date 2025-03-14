pragma solidity ^0.8.0;
contract ContractWithFallback23 {
  function modifyWithModifier(address addr, uint x) public {
    emit Emitted(addr, msg.value);
    addr.call{value: msg.value}('');
  }
  event Emitted(address addr, uint x);
}
contract Caller {
  function doSomething() public pure {

    (bool success, ) = msg.sender.call{value: 1 ether}('');
    if (!success) {
      return;
    }
  }
}
