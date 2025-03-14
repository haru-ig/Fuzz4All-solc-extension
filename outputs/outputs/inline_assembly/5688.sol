pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    bytes32 public _var = "";
    function test() public returns(bytes32) {
        bytes32 x;
        x = block.hash;
        x = keccak256(abi.encodePacked(x, 1));
        x = keccak256(abi.encodePacked(x, 1));
        x = keccak256(abi.encodePacked(x, 1));
        return x;
    }
}
