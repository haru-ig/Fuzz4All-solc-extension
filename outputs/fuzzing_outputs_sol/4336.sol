pragma solidity ^0.8.0;
contract TestMutatedFallbackCaller {
    uint internal x;
    receive() public payable {
        x += 12;
    }
}
