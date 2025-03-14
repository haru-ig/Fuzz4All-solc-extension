pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z  + 10;
        c += Z + Z;
        d += Z + Z  + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint W) public {
        a = W;
    }
}
contract SolidityAssemblyInterfaceExample {}

contract SolidityAssemblyExample is ISolidityAssemblyExample, IMutatedSolidityAssemblyExample, SolidityAssemblyInterfaceExample {}
