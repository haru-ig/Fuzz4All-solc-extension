pragma solidity ^0.8.0;
contract MutatingFallback7 {
  uint16 internal a;
  modifier onlyFallback {
    assert(a >= 300);
    _;
  }
  function mutate() public onlyFallback pure returns (uint16 _mutateReturnValue) {
    a = 10;
    assert(a < 20);
    return a;
  }
}

pragma solidity ^0.8.0;
contract FallbackFallback7 {
  function fallback() external payable {}
}

pragma solidity ^0.8.0;
contract Caller {
  function myContract() public payable pure returns(fallback()) {
    fallback();
  }
}
