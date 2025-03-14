pragma solidity ^0.8.0;
contract SemanticSolidityAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    address public _e;
    mapping (address => uint) public _f;
    constructor(uint Z) public {
        _a = Z;
        _b = Z * 255;
        _c = Z >> 8;
        _d = Z + 1;
        _e = msg.sender;
        _f[_e] -= 1850;
    }
