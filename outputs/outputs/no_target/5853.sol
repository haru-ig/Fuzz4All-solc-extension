pragma solidity ^0.8.0;
contract C8 {
    uint constant private x = 2 ** 256;
}
contract C9 {
    uint constant private x = uint(-2 ** 256);
}
contract C10 {
    uint public constant x = uint(8e10);
}
