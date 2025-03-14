pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure public returns(uint) {
        uint _tmp = _a % 2;
        return 2*_tmp;
    }
}
