pragma solidity ^0.8.0;
contract B {
    uint x;
    uint public y;
    function add() public {
        x += y / 10;
    }
}
