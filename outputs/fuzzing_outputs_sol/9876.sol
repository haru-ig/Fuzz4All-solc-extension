pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure public returns(uint) {
        return _a / 2;
    }
}
contract Fallback {
    function fallback() pure public returns(uint) {
        uint temp = new Old(42).old(10_000);
        return temp;
    }
}
