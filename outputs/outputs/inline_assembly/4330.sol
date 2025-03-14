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
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint Z) public{
        a += Z;
    }
}
interface IMutatedMutatedSolidityAssemblyExample {
    function a(uint) external;
}
interface IMutatedSolidityAssemblyExample {
    function a(uint) external;
}
contract MutatedMutatedSolidityAssemblyExample {
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
    function a(uint Z) public{
        a += Z;
    }
    function a(uint Z2) public{
        a += Z2;
        a += Z2 + 23;
        e = msg.sender;
        f[e] = 5;
    }
}
contract MutatedMutatedMutatedSolidityAssemblyExample {
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
    function a(uint Z) public{
        a += Z;
    }
    function a(uint Z2) public{
        a += Z2;
        a += Z2 + 23;
        e = msg.sender;
        f[e] = 5;
    }
}
