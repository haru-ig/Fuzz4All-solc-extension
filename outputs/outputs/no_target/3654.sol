pragma solidity ^0.8.0;
contract C {
    uint private constant value = 1;
    uint public constant b = 2;
    uint constant constantMax = 2**128;
}
contract D {
    uint private constant value = 1;
    uint public constant b = 0xc;
    uint constant constantMin = 0xfffffffffffffffffff;
}
contract E {
    uint private constant value = 1;
    uint public constant b = 0;
    uint constant constantMax = 0;
}
