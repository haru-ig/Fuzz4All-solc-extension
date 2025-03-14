pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback3 {
    function f() external {
        CallFallbackFunctionFourPlusFallback2(this.selector).f();
    }
    fallback() external {
    }
}
