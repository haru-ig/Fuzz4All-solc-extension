pragma solidity ^0.8.0;
contract Test {
    function f() public pure {
        uint[] memory array;
        for (uint i = 2; i < array.length; i++) {
            array[i] = 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Test {
    function f() public pure {
        address[3] memory array;
        bool[] memory bools;
        uint[] memory uints;
        address[] memory addressArray;
        uint[2] memory uint2;

        if (uints[1] > uint2) {}
    }
}
