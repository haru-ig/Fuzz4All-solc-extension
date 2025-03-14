pragma solidity ^0.8.0;
contract ContractWithFallback20 {
  function modify(address addr, uint x) public payable {
    addr.transfer(msg.value);
    if (x == 1) {

      addr.call();
    }
    emit Emitted(addr, x);
  }
  event Emitted(address addr, uint x);
}
