pragma solidity ^0.8.0;
contract FallbackTest {
    bytes32 public stateRoot;
    struct State {
        bytes32 root;
        address who;
    }
    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
    }
    fallback() external payable {
        State storage state = _getStorage();
        bytes32 newStateRoot = keccak256(abi.encodePacked(state.root, msg.sender));
        require(newStateRoot < state.root, "Wrong StateRoot");
        state.root = newStateRoot;
        state.who = msg.sender;
    }
    function _getStorage() internal view returns (State storage) {
        assembly {
            mstore(0xb4, msg.sender)
            mstore(0xb8, mload(0xb4))
            mstore(0xc0, mload(0xb8))
         }
         return State(0xc0, msg.sender);
    }
}
