pragma solidity ^0.8.0;
contract O2 {
    uint public x;
    event xchange(uint y) external returns (uint) {
        emit xchange(x + y);
    }
    function y2(uint x) external {
        x += 2;
    }
}
