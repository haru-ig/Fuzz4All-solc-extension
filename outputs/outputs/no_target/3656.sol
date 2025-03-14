pragma solidity ^0.8.0;
contract C {
    uint private constant value = 4000;
    uint public constant b = 1;
    uint constant constantMax = uint(-(1 << 127) / 2);
    function f(uint) public pure {
        uint _a = 50;
        uint _b = 2;
        uint _c = 0x7fffffff;
        uint _max = constantMax < 0x7ffffffffffffff;
    }
}
