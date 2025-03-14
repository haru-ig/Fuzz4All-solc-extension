pragma solidity ^0.8.0;
contract FallbackFunctionTwoPlus33 {
  constructor() public {}
  fallback() external payable {}
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallbackLongCall {
    function () external payable;
}
