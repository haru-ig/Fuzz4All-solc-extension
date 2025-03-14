pragma solidity ^0.8.0;
contract GasAwareFallback {
  function receive() external payable {
    call();
  }

  function call(){
    throw;
  }
}


address payable FallbackContract = payable(new PayableFallback());
