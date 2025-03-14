pragma solidity ^0.8.0;
contract C {
    uint[] array;
    uint a;
    function modifiesArray(uint[4] memory array) public pure returns (bool) {
        return array[0] > 0;
    }
}
