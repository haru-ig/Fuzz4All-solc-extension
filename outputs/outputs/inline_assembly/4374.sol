pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    address public _e;
    mapping (address => uint) public _f;
    constructor(uint Z) public {
        _a -= Z;
        _b -= Z + 10;
        _c -= Z;
        _d -= Z + 55;
        _e = msg.sender;
        _f[_e] = 1650;
    }
}
