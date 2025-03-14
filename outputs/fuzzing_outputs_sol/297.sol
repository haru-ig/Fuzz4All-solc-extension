pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_1_B {
    fallback (uint256 _x) external pure returns (uint256){
        return _x + 1;
    }
}
