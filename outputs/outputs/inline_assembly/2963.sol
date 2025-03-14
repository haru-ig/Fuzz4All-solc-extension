pragma solidity ^0.8.0;
contract C {
    uint[] array;
    uint public x;
    function getX() public view returns (uint) {
        return x;
    }
}
