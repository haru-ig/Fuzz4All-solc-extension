pragma solidity ^0.8.0;
contract ReturningFallback {
  uint public constant AMOUNT = 10000000 ether;
  function fallback() public returns (uint) {
    return AMOUNT;
  }
}

pragma solidity ^0.8.0;
contract PayableReturningFallback {
  uint public constant AMOUNT = 10000 ether;
  function fallback() pure public payable {
    return AMOUNT;
  }
}

pragma solidity ^0.8.0;
contract ContractWithoutFallback {
  function fallback() pure public {
  }
}
