pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        bytes20 s0 = array[0];
        array[0] = s0;
        return array.length <= 1;
    }
}
