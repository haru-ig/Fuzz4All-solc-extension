pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample, ISolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint x) external {a += x;}
}
