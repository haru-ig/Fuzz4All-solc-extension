pragma solidity ^0.8.0;
contract SemanticallyEquivalentFallbackTest {
    bytes32 public stateHash;
    contract StorageAccess {
        bytes32 public root;
        constructor(bytes32 _initialState) {
            root = _initialState;
        }
        function setRoot(bytes32 _newRoot) public {
            root = _newRoot;
        }
        function getStateHash() public view returns (bytes32 stateHash) {
            stateHash = keccak256(abi.encodePacked(root));
        }
        function getStateRoot() public view returns (bytes32 stateRoot) {
            stateRoot = keccak256(abi.encodePacked(stateHash));
        }
    }
    constructor(StorageAccess storageAccess, bytes32 _initialState) {
        stateHash = storageAccess.getStateHash();
        stateRoot = storageAccess.getStateRoot();
        require(stateRoot == _initialState, "Wrong StateRoot");
        stateHash = keccak256(abi.encodePacked(stateHash, _initialState));
        stateRoot = keccak256(abi.encodePacked(stateHash, _initialState));
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
        root = newStateRoot;
        stateRoot = newStateRoot;
    }
    function setStateRoot(bytes32 _newRoot) public {
        stateHash = keccak256(abi.encodePacked(stateHash, _newRoot));
        stateRoot = keccak256(abi.encodePacked(stateHash, _newRoot));
    }
}
