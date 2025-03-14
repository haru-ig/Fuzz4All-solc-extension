pragma solidity ^0.8.0;
contract C {
    bytes20 b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        array[0] = b;
        return array[0] == b;
    }
}
