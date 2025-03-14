pragma solidity ^0.8.0;


contract ArrayEight {
    uint[] a;

    constructor (uint[] memory _x) public {
        a = _x;
    }

    function toArray() public pure returns (uint[] memory) {
        return a;
    }

    function toArraySigned() public pure returns (uint[] memory) {

        uint[] memory b = new uint[](a.length + 1);
        for (uint i = 0; i < a.length; i++) {
            b[i] = a[i];
        }
        return b;
    }

    function toArrayUnsigned() public pure returns (uint[] memory) {
        return a;
    }
}
