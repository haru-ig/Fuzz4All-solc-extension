pragma solidity ^0.8.0;
contract A {
    uint private constant value = 1;
    uint public constant b = 1;
    uint constant constantMax = 2**128;
}
contract B {
    uint private constant value = 1;
    uint public constant b = 1*b;
    uint constant constantMax = 2**128;
}
contract C {
    uint private constant value = 1;
    uint public constant b = 1*b;
    uint constant constantMax = 2**128;
}
contract D {
    uint private constant value = 1;
    uint public constant b = 1*b;
    uint constant constantMax = 2**128;
}
contract E {
    uint private constant value = 1;
    uint public constant b = 1;
    uint constant constantMax = 2**128;
}
contract F {
    uint private constant value = 1;
    uint public constant b = 1;
    uint constant constantMax = 0;
}
contract G {
    uint private constant value = 1;
    uint public constant b = 1;
    uint constant constantMax = 2**128-1;
}
