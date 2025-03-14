pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c += Z + 1;
        a += Z + 10;
        b += Z;
        a++;
        b++;
        d = increment(increment(2));
        f[msg.sender] = 321;
    }
    function increment(uint Y) public returns (uint) {
        return 2*Y + 1;
    }
}
