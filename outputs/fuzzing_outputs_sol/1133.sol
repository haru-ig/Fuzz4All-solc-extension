pragma solidity ^0.8.0;
contract SemanticsMutation {
    constructor(address _dummy, uint _dummy_input) public {
        fallback();
    }
    fallback() external payable {
        require(msg.value == 1 ether);
        uint dummy_output;
        assembly {
            mstore(0x0, _dummy_input)
            mstore(0x34, _dummy)
            mstore(0xd4, 1)
            mstore(0xd4, 0)
        }
        require(abi.decode(mload(0x0), (uint)), "Failed to fallback");
        require(abi.decode(mload(0x34), (uint)), "Failed to fallback");
        require(abi.decode(mload(0xd4), (uint)), "Failed to fallback");
    }
}

pragma solidity ^0.8.0;
contract ReceiveMutabilityMutation {
    constructor(address _dummy, uint _dummy_input) public {
        fallback();
    }
    function simpleMutation() public payable onlyFallback {
        require(msg.value == 1 ether);
        uint dummy_output;
        assembly {
            mstore(0x0, _dummy_input)
            mstore(0x34, _dummy)
            mstore(0xd4, 1)
            mstore(0xd4, 0)
        }
        require(abi.decode(mload(0x0), (uint)), "Failed to fallback");
        require(abi.decode(mload(0x34), (uint)), "Failed to fallback");
        require(abi.decode(mload(0xd4), (uint)), "Failed to fallback");
    }
    fallback() external payable {
        require(msg.value == 1 ether);
        uint dummy_output;
        require(dummy_output == _dummyOutput);
        uint dummy_input_again = mload(0x34);
        require(dummy_input_again == _dummyInput);
        uint dummy_input = dummy_input_again;
        assembly {
            mstore(0x0, dummy_input)
        }
    }
    receive() external payable {}
    receive() external payable {}
    function reset(uint _dummy_input) public {
        fallback();
    }
    function _dummyOutput() external view returns (uint) {
        return mload(0x0);
    }
    function _dummyInput() external view returns (uint) {
        return mload(0x34);
    }
}
