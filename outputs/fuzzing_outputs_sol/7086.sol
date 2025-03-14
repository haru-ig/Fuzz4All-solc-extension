pragma solidity ^0.8.0;
contract MutatedCallerMutator2 {
    function mutatedFallback() public payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
    }
    fallback() public payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
    }
}
