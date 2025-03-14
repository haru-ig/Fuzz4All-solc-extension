pragma solidity ^0.8.0;
contract SolidityAssemblyExample is IMutatedSolidityAssemblyExample, ISolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    address public f;
    mapping (address => uint) public g;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f = msg.sender;
        g[e] = a * c;
    }
}
