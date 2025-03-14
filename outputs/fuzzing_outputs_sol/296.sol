pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_A_B {
    constructor() {}
    fallback(address x) pure external {



    }
}
contract CallFallbackFunctionTwoPlusFallback_B_A {
    constructor() {}
    fallback() external {



    }
}
