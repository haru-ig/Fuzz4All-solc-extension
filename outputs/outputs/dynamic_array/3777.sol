pragma solidity ^0.8.0;
contract C {
    uint[] array;
    uint a;
    function modifiesArray(uint[] memory array) public pure returns (bool) {
        return array.length > 0;
    }
}
