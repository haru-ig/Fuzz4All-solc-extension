pragma solidity ^0.8.0;
contract Test31 {
    using Test30 for uint32[];
    using Test30 as MyArray;

    MyArray myArray;
    function f(uint32[] memory) public pure {
    }
}
