pragma solidity ^0.8.0;
contract SolidityAssemblyExampleMutated {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    address public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        address storage h = e;
        f = msg.sender;
        uint _g = 321;
        uint x = _g;
        a(x);
        f[msg.sender].value(45)(a);
    }
    function a(uint X) public {
        a += X;
    }
}
