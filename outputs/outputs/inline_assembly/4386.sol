pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    address public _e;
    mapping (address => uint) public _f;

    constructor() public {
        _a = 250;
        _b = 50000;
        _c = 32333;
        _d = 309123;
        _e = msg.sender;
        _f[_e] -= 160;
    }
}
