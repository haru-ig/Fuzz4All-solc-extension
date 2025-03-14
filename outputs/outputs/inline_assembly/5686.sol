pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    bytes32 public _bytes;
    function test() external returns(bytes32) {
        bytes32 x;
        x = block.number;
        x = bytes32(_var + x);
        x = bytes32(_var + x);
        return x;
    }
}
