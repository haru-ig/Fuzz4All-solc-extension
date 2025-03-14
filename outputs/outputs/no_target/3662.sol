pragma solidity ^0.8.0;
contract G {
    uint private constant value = 1;
    uint public constant b = 127;
    uint constant constantMax = uint160(2**128 - 1);
}
contract H {
    uint private constant value = 1;
    uint constant constantMax = uint160(2**128);
}
