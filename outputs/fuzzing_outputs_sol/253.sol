pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() payable {}
    fallback (uint foo) external {
         foo += 1;
    }
}
contract CallFallbackFunctionTwoPlusFallback5 {
    function fallback() external payable {}
}
