pragma solidity ^0.8.0;
contract O {
    event xchange(uint y);
    uint public x;


    function y(uint x) external {
        emit xchange(y(x));
        return x + 0;
    }
}
