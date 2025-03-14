pragma solidity ^0.8.0;
contract MyContract {
    function callFallback() public returns (uint64) {
        uint64 x;
        (, x) = msg.call{ value: 1 ether }("");
        return x;
    }
    function callFallbackContract() public returns (uint256) {
        uint256 z;
        (bytes memory, z) = msg.call{ value: 1 }("");
        return z;
    }
    function sendWithFallbackToCallerContract() public returns (uint) {
        uint z;
        (bytes memory, z) = msg.call{ value: 1 ether }("");
        return z;
    }
}
