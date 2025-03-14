pragma solidity ^0.8.0;
contract O {
    uint public x;
    event xchange(uint y);
    function y(uint x) external returns (uint) {
        return ((x + 1) * 3 / 2) + x + 1;
    }
}
