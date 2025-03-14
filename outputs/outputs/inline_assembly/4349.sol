pragma solidity ^0.8.0;
contract AssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    contract SolidityAssemblyExampleExample is IMutatedSolidityAssemblyExample, ISolidityAssemblyExample {
        constructor(uint Z) public {
            a += Z;
            b += Z + 10;
            c += Z;
            d += Z + 55;
            e = msg.sender;
            f[e] = 321;
        }
    }
}
contract MutatedAssemblyExample {
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
}
contract MutatingAssemblyExample is IMutatedSolidityAssemblyExample {

    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }

    function a(uint x) external {
        _a(x);
    }

    function _a(uint x) internal {
        a += x;
        b += x * 2;
        c += x;
        d += x * 3;
        e = msg.sender;
        f[tx.origin] += x;
    }
}<fim_middle>
