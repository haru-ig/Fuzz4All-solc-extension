pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure public returns(uint) {
        return old(_a) + 1;
    }
}
