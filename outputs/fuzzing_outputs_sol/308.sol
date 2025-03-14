pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_4_S {
    receive() external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_5_S {
    constructor() {}
    receive() external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_1_S {
    constructor() {
        fallback();
    }
    fallback() external payable {}
}
