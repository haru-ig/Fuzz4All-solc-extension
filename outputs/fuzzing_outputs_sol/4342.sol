pragma solidity ^0.8.0;
contract TestMutatedFallbackCaller {
    uint internal x;
    receive() external payable {
        x += 12;
    }
}
