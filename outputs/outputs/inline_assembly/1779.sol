pragma solidity ^0.8.0;
contract Example {
    uint x = 10;
    uint y = 20;

    function add() external {
        x = x * 2;
    }

    function multiply() external view returns(uint) {
        x = x + y;
        return x;
    }
}
