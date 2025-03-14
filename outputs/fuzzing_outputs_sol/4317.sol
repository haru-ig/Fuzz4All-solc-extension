pragma solidity ^0.8.0;
contract FullyMutatedSimpleFallbackCaller {
    uint internal x = 10;
    receive() external { }
    fallback() external payable {
        x = 12;
    }
}
