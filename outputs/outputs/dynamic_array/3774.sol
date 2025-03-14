pragma solidity ^0.8.0;
contract C {
    uint[4] array;
    uint a;
    function modifiesArray(uint[] memory array) public pure returns (bool) {
        return array[0] > 0;
    }
}
