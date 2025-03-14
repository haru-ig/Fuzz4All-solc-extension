pragma solidity ^0.8.0;
contract MutatingFallback1 {
  uint16 internal num1;
  modifier onlyFallback {
    require(msg.data.length == 0);
    _;
  }
  function mutate1() public onlyFallback {
    num1 = 3 * 3;
    emit fallbackFallback();
  }
  event fallbackFallback();
}

pragma solidity ^0.8.0;
