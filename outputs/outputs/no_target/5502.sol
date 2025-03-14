pragma solidity ^0.8.0;
contract O {
    uint public x;
    function g(uint _y) private {
        x = (_y / 2) + 1;
    }
}
