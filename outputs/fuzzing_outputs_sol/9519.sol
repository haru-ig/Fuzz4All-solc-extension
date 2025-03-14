pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  fallback() external payable {
    emit Emitted.to(msg.sender, msg.value);
    msg.sender.fail();
  }
  event Emitted(address addr, uint x);
}

pragma solidity ^0.8.0;
  contract ContractWithFallback17 {
    fallback() external pure {
      throw;
    }
  }
