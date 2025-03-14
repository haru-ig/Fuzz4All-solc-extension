pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_1_B {
    constructor() {}
    fallback() external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_0_B {
    constructor() {}
    fallback() external {
        bytes memory x = new bytes(10); x[10]=0x40; x[7]=0x12; bytes memory y = x; y = x;
        x[2]=0x12; x[12] = 3 * 4;
    }
}
