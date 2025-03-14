pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    uint public f;
    mapping (address => uint) public fn;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e++;
        f += Z + 321;
    }
}
