pragma solidity ^0.8.0;

contract MutatedArraysV2 {
    uint[1] y;

    function f(uint x) public view {
        uint[] memory z = new uint[](55);
        uint q = 0;
        for (uint j = 0; j < x; ++j) {
            z[q++] = uint(i);
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedArraysV2 {
    uint[1] y;

    function f(uint x) public view returns (uint[] memory) {
        uint[] storage z = new uint[](55);
        for (uint j = 0; j < x; ++j) {
            z[j + 1] = uint(i);
        }
        return z;
    }
}
