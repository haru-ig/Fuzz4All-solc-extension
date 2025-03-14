pragma solidity ^0.8.0;
contract FallbackTest {
    bytes32 public stateRoot;
    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
    }
    fallback() external payable {
        bytes32 newStateRoot;
        address msgSender = msg.sender;
        if (stateRoot == bytes32(0)) {
            newStateRoot = keccak256(abi.encodePacked(bytes32(0), msgSender));
        } else {
            newStateRoot = keccak256(abi.encodePacked(stateRoot, msgSender));
        }
        require(newStateRoot == keccak256(abi.encodePacked(stateRoot, msgSender)), "Wrong StateRoot");
        stateRoot = newStateRoot;
    }
}
