pragma solidity ^0.8.0;
contract C {
    bytes20[2] b;
    function mutatesArray(bytes20[] memory array) public pure returns (bool) {
        array[1] = 1;
        return array.length <= 2;
    }
}
