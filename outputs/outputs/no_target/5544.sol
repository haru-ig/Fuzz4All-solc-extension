pragma solidity ^0.8.0;
contract P {
    mapping(uint=>bool) public b;

    function f() public returns (uint) {
        uint x = 1;
        bool b;

        b = true;

        b = false;

        b = x / -1;
        return -1;
    }
}

contract S {
    function f() public returns (uint) {
        uint x = 1;
        x = -1;
        x = +1;
        x = 1.0;
        x = 0;

        return -1;
    }

    function g() public returns (uint) {
        uint x = 1;
        x--;
        x--;
        x++;
        x++;
        x++; x();
        x++; x++;
        return -1;
    }
}
