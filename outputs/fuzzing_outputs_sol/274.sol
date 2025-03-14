pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback1 {
    uint public i;
    constructor() public {}
    function () public {}
    function f() external {
        emit(foo(), 33333333333333338888);

        CallFallbackFunctionTwoPlusFallbackTwo.fallback();
    }
}
  contract CallFallbackFunctionTwoPlusFallback3Mutated {
    constructor() payable {}
    fallback () external payable {}
    receive () external payable {   }
}
