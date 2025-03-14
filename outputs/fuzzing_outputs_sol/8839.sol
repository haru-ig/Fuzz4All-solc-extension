pragma solidity ^0.8.0;
contract FallbackTest {
    bytes32 public stateRoot;

    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
    }

    fallback() external payable {
        bytes32 newStateRoot = keccak256(abi.encodePacked(stateRoot, msg.sender));
        require(newStateRoot == keccak256(abi.encodePacked(stateRoot, msg.sender)), "Wrong StateRoot");
        stateRoot = newStateRoot;
    }
}
