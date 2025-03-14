pragma solidity ^0.8.0;
contract C {
    bytes20[] array;
    function modifiesArray(bytes20[] memory array) public {
        array.length = 10;
    }
}
