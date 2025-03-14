pragma solidity ^0.8.0;
contract C {
    int[0] a;
    function modifiesArray(int[] memory array) public pure returns (bool) {
        return array.length <= 10;
    }
}
