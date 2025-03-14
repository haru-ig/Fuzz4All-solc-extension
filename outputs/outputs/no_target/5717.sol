pragma solidity ^0.8.0;
contract Baz {
    uint y;
    receive() external payable pure {}
}

contract C {
    event e(uint);
    event f(uint);
    uint private x;
    function g() external {
        emit e(x);
        emit f(x);
        uint constant y = x;
    }
}

contract D is C {
}
