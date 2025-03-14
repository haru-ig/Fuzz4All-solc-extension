pragma solidity ^0.8.0;
import "./MutatedBlock2Mutation84.sol";
contract MutatedBlock2Mutation87 {
    uint internal _var;
    modifier test {
        _var++;
        _;
    }
    constructor(uint initialVar) {
        _var = initialVar;
    }
    function test2() test public returns (uint) {
        return _var - block.number + 1;
    }
}
