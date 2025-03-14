pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor (uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint X) public {
        a += X;
        f[e] += 2;
    }
    function mutated_a(uint X) public {
        a += 2;
        f[e] += 2;
    }
}

pragma solidity ^0.8.0;
library MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z, uint W) public {
        a += Z * W;
        b += Z + W;
        c += Z * W;
        d += Z + W * 5;
        e = msg.sender;
        f[e] = 55;
    }
    function mutated_a(uint X, uint Y) public {
        a += X * Y;
        f[e] += 2;
    }
}
contract MutatedSolidityAssembly {
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
    function a(uint X) public {
        MutatedSolidityAssemblyExample.a(X);

        MutatedSolidityAssemblyExample.mutated_a(a, X);
    }

    function mutated_a(uint X, uint Y) public {
        MutatedSolidityAssemblyExample.a(X);
