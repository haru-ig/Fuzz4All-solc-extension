pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    function mutatedFallback() public payable {
        bytes memory data = abi.encode(msg.data);
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(data, (uint256, bytes32, bytes32, uint8[]));
    }
    function fallback() public payable {
        bytes memory data = abi.encode(msg.data);
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(data, (uint256, bytes32, bytes32, uint8[]));
    }
}
