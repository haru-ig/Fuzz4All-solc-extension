pragma solidity ^0.8.0;
contract ContractWithFallback23 {
  function modify(address addr, uint x) public payable {
    emit Emitted(addr, x);
    addr.call(abi.encodeWithSelector(payable.selector,"",x));
  }
  event Emitted(address addr, uint x);
}


pragma solidity ^0.8.0;
contract ContractWithLowLevelCall2 {
  receive() external payable {}
}
