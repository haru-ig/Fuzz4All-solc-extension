pragma solidity ^0.8.0;
contract Mutator {
    function mutate(mut uint i) public pure returns (uint) {
        return uint(keccak256(abi.encode(i,1, "hello world")));
    }
}
