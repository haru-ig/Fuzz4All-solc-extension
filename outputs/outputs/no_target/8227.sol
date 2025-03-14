pragma solidity ^0.8.0;
contract Mutated8a {
    uint8[] public array;

    function f() view public {
        uint8[10][10][10] memory array ;
    }
}
