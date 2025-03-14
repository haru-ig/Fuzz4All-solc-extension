pragma solidity ^0.8.0;
contract C {
    uint[] array;
    uint a;
    function modifiesArray(uint[] memory array) public pure returns (bool) {
        bool flag = array[0] > 0;
        return flag;
    }
}
