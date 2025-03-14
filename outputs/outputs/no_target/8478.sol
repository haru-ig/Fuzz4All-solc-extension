pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint64  ,
        uint64[8] memory  ,
        uint256
    ) public {
        a = -1;
        b = b;
        c = -1;
    }
    function add (
        uint64  ,
        uint64[8] memory  ,
        uint256
    ) public {
        a = a + 1;
        b = b;
        c = c + 1;
    }
    function set (
        uint64  ,
        uint64[8] memory  ,
        uint256
    ) public {
        a = a + 1;
        b = b;
        c = c + 1;
    }
    }
