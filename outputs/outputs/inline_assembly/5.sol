pragma solidity ^0.8.0;


contract MemoryExample{
    uint memory a = 10;
    uint memory b = a;
    bool memory c = a == a;

    function get() public pure returns (uint memory m){
        return m;
    }

    function set() public {
        a = 5;
        b = 2;
    }
}
