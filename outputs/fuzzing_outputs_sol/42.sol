pragma solidity ^0.8.0;
contract CallerFallbackNonConstant {
    uint256 constant x = 42;
    receive() external payable {}
    fallback() external pure {}
}
contract InitialCaller {
    uint256 x;
    receive() external pure returns (uint256) {
        return x;
    }
}
contract SecondCaller {
    uint256 x;
    receive() external pure returns (uint256) {
        return x;
    }
}
