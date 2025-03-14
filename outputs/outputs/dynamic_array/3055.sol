pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    uint[] memory y;
    uint[] memory u;
    uint[] a;
    uint b;
    uint[] memory array = new uint[](3);
    uint xValue;

    constructor () public {
        x = new uint[](1);
        uint[] memory a;
        y = new uint[](1);
        array[0] = 0;

    }

    function setPairs_V4(uint p0, uint p1) public {
        x[1] = 1;
        array[0] = p0;
        array[1] = p1;
        u[0] = 2;
    }

    function resizeArrays_V4() public {
        array.length = 10;
    }

    function delete_V4() public {
        array.length = 0;
    }
}
