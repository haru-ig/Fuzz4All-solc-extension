pragma solidity ^0.8.0;
contract Simple {
    bytes32 x;
    bytes32 y;

    function simple() public returns (bytes32) {
        x.length += 4;
        return x;
    }
}
