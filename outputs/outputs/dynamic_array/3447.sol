pragma solidity ^0.8.0;
contract C3 is C2 {
    function C3() public payable override {
        return;
    }
    modifier payable {
        return;
    }
}

contract E {
    event a1(uint b);
    event a2(uint b);
    function emitA() public { a1(bytes32(uint256(blockhash(block.number - 1))))); a1(bytes32(uint256(blockhash(block.number - 2))))); a1(bytes32(uint256(blockhash(block.number - 3))))); a1(bytes32(uint256(blockhash(block.number - 4)))));
    function emitB() public { a2(bytes32(uint256(blockhash(block.number)))); a2(bytes32(uint256(blockhash(block.number + 1)))); a2(bytes32(uint256(blockhash(block.number + 2)))); a2(bytes32(uint256(blockhash(block.number + 3))))};
}
