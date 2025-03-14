pragma solidity ^0.8.0;

  contract C {
    function g(uint[41] memory array1) public pure {
        uint[3] memory array2;
        array1[5] = 4;

        array2[0] = 5;
        array2[1] = 6;
        array2[2] = 7;
        array2[3] = 8;
        array2[4] = 9;
    }
}
