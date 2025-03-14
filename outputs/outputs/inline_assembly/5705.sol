pragma solidity ^0.8.0;
contract MutatedBlock10Mutation6 {
    bytes public _var;
    constructor(bytes memory b) { _var = b; }
    function test() public view returns(bytes) {
        bytes32 x;
        x = _var;
        x = bytes(keccak256("x"));
    }
}
