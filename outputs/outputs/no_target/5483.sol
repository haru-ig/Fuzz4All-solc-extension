pragma solidity ^0.8.0;
contract O {
    uint public x;
    event xchange(uint y);
    function y(uint x) external returns (uint) {
        uint y = x-42;
        emit xchange(y);
        return y;
    }
}

pragma solidity ^0.8.0;
contract O {
    uint public x;
    event xchange(uint y);
    function y(uint x) public returns (uint) {
        uint y = x;
        x = 42;
        emit xchange(y);
        return y+x;
    }
}
