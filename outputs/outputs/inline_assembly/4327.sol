pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        a += Z + 10;
        a += Z + 100;
        a += Z + 1000;
        b += Z;
        a += Z;
        c += Z + 10;
        a += Z + 10;
        d += Z;
        c += Z + 10;
        a += Z + 10;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint X) public {
        a += X;
    }
}
