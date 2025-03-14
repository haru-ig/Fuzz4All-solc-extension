pragma solidity ^0.8.0;

contract ArraysTest {
    SymbolicEquality_ArrayMutations23 internal storage;
    function Mutations() public {
        uint[] memory a = new uint[](uint(20));
        uint j = 2;
        uint i = storage.fct(a, j);
        assert(i == 6);
    }
}
