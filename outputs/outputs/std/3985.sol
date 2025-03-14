pragma solidity ^0.8.0;

contract Mutation {
    uint[] private _nums;

    function method() public pure {
        Array3(42).getMaxArray(42,42);

        Array3(43).getMaxArray(42,42);

        uint[3] memory nums = [1,2,3];
        Array3(44).getMaxArray(...nums);

        Array(32).getMaxArray(32,32);

        Memory(32).max(42,42);

        Memory(43).max(43,43);
    }

    function getNums() public view returns (uint[]) {
        return _nums;
    }
}
