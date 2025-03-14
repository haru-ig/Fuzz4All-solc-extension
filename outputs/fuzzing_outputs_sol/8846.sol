pragma solidity ^0.8.0;
contract CallerTest {
    bytes32 public stateRoot;

    function callMe() public pure returns (bytes32) {
        bytes memory data = "Hello World!";
        bytes32 newStateRoot;
        address msgSender = msg.sender;
        if (stateRoot == bytes32(0)) {
            (newStateRoot, ) = msgSender.call{value: 2 ether}(data);
        } else {
            newStateRoot = keccak256(abi.encodePacked(stateRoot, msgSender, data));
        }
        require(newStateRoot == keccak256(abi.encodePacked(stateRoot, msgSender, data)), "Wrong StateRoot");
        stateRoot = newStateRoot;
        return newStateRoot;
    }

    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
    }
}
