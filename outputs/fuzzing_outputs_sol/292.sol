pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_3_B {
    constructor() payable {}
    fallback () external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_2_B {
    constructor() payable {}
    fallback () external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_1_B {
    fallback () external payable {}
}
