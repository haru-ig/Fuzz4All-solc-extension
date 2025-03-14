pragma solidity ^0.8.0;
contract FirstCaller {
    uint256 constant x = 0;
    receive() external payable {
        x = 3;
    }
    fallback() external payable {}
}
contract SecondCallerFallback {
    uint256 x;
    receive() external payable {
        x = 1;
    }
    fallback() external payable {}
}
contract NoFallbackCaller {
    uint256 x;
    fallback() external payable {}
}
