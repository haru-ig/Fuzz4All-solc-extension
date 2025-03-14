pragma solidity ^0.8.0;
contract Initializer {



    uint64 public immutable _number;

    constructor(){
        _set(0);
    }

    function _set(uint64 x) internal {
        _number = x;
    }
}
