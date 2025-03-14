pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    constructor(uint Z) public{
        a += Z;
        b += Z;
        c += Z;
        d += Z;
        e = msg.sender;
    }
    function a(uint x) private pure{
        selfdestruct(x);
    }
}
interface IA {
    function a(uint) external;
}
interface IB {
    function a(uint) external;
}
contract MutatedMutatedSolidityAssemblyExample is IA, IB {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    constructor(uint Z) public{
        a += Z/2;
        b += Z/2;
        c += Z;
        d += Z;
        e = msg.sender;
    }

    function a(uint x) private{
        selfdestruct(x);
    }
}
