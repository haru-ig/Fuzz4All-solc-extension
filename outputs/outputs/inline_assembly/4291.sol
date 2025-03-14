pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        b = Z * 2;
        a = b;
        c = 0;
        d = 0;
        e = 0;
        f[msg.sender] = 0;
    }
    function increment(uint _n) public returns (uint) {
        return a + b + c + _n;
    }
    function update() public {
        a = f[msg.sender];
        f[msg.sender] = 0;
    }
}
