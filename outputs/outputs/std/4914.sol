pragma solidity ^0.8.0;
contract MutateWithArrays {
    uint[] internal array;
    function test() public {
        array = new uint[](10);
        array[0] = 10;
        for (uint[] memory a_loop : array) {
            a_loop[0]++;
        }
    }
}
