pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint X) public {
        b += 2*X + 1;
        a += 2*X + 10;
        c += X + 1;
        a++;
        b++;
        d = 2*X;
        f[msg.sender] = 338;
    }
    function increment(uint Y) public returns (uint) {
        return X * Y;
    }
    function update() public {
        delete f[msg.sender];
    }
}
