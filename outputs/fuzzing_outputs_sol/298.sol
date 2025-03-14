pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_1_B {
    modifier a() { require(false); }
    constructor() {}
    fallback() external payable { a; }
}
contract CallFallbackFunctionTwoPlusFallback {
    constructor() {}
    fallback() external payable {}
}
