pragma solidity ^0.8.0;
contract FallbackTest {
    bytes32 public stateRoot;
    uint256 counter;
    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
        counter = 0;
    }
    fallback() external payable {
        bytes32 newStateRoot;
        address msgSender;
        if (stateRoot == bytes32(0)) {
            newStateRoot = keccak256(abi.encodePacked(stateRoot.child(keccak256("Counter").child(tx.origin.toHexString()))));
            counter++;
        } else {
            newStateRoot = keccak256(abi.encodePacked(stateRoot, counter.toString()));
            counter++;
        }
        require(newStateRoot == keccak256(abi.encodePacked(stateRoot.child(keccak256("Counter").child(tx.origin.toHexString())))), "Wrong StateRoot");
    }
}
