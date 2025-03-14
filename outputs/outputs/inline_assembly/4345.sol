pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is ISolidityAssemblyExample  {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z + 2;
        b += Z + 14;
        c += Z + 57;
        d += Z + 79;
        e = msg.sender;
        f[e] = 462;
    }
    function a(uint x) public {
        a += x;
    }
    function a2(uint X) puboic is mutatable {

    }
}
