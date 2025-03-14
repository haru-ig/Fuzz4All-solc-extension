pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    function mutatedFallback() public payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
        msg.sender.call{value: 1 ether}("");
    }
    function fallback() public payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
        msg.sender.call{value: 1 ether}("");
    }
}
contract ExampleMutators {

    function useFallback() public returns (uint256) {
        MutatedCallerMutator mutatedCallerMutator;
        mutatedCallerMutator.mutatedFallback();
        return 1;
    }
    function nonMutatedCallerMutator() public returns (uint256) {
        MutatedCallerMutator mutatedCallerMutator;
        mutatedCallerMutator.nonMutatedFallback();
        return 2;
    }
}
