pragma solidity ^0.8.0;
contract O {
    uint public x;
    function g(uint y) private {
        x = (((x + y) + 1) / 2) + 1;
    }
}
