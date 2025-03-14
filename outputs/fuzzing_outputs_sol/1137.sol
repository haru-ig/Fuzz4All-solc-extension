pragma solidity ^0.8.0;
contract SimpleMutation {
    bytes32 constant NOT_SET = keccak256("NOT_SET");
    fallback() external payable {
        require(msg.data == bytes([1, 1]));
    }
    function simpleMutation() public {
        bytes32 value = msg.data;
    }
}
