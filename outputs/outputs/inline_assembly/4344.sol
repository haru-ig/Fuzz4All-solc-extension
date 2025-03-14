pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        a += Z + 55;
        b += Z + 10;
        b += Z + 55;
        c += Z + 10;
        c += Z;
        d += Z;
        d += Z + 55;
        a = -15;
        b = 1;
        c = -1;
        d = -155;
    }

    function exampleFunc() public {
        f[e] = a;
        f[msg.sender] = a + 35;
        a = -127;
        b = 8;
        c = 127;
        d = 155;
    }

    receive () external {
        a = -15;
        b = 1;
        c = -1;
        d = -155;
    }
}
interface ISolidityAssemblyExample {
    function exampleFunc() external;
}
