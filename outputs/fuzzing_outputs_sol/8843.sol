pragma solidity ^0.8.0;
contract SemanticFallbackTest {
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

pragma solidity ^0.8.0;
contract CallWithSender {
    function callWithSender() public returns (bytes32 output) {
        (output,) = address(this).call{value: 6 ether}("");
        return stateRoot;
    }
}

contract Caller is FallbackTest, CallWithSender {
 bytes32 public stateRoot;
    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
    }
}


pragma solidity ^0.8.0;
contract Call {
    function call() public {
        (, bytes32 newStateRoot) = address(this).call{value: 6 ether}("");
        require(newStateRoot == keccak256(abi.encode(address(this).callWithSender(), ""))), "stateRoot failed");
        stateRoot = newStateRoot;
    }
}
