pragma solidity ^0.8.0;
contract Test1831A {
    uint [] public array;
    constructor () public {
        array = new[1][];
        array[0] = new uint[](0);
    }
}
