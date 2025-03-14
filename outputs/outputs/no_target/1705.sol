pragma solidity ^0.8.0;
contract Mutate0016 {
    uint256[5] internal array;
    function array() public returns (uint256[5]) {
        return array;
    }
    function read() public view {
        uint256[5] memory temp;
        temp[0] = array[0];
        temp[1] = array[1];
        temp[2] = array[2];
        temp[3] = array[3];
        temp[4] = array[4];
    }
}
