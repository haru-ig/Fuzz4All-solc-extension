pragma solidity ^0.8.0;
contract AssemblyExample{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c += Z + 1;
        a += Z + 3;
        b += Z;
        a++;
        b++;
        d = 1;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}
