pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Y) public {
        b = Y * 3;
        a = 0;
        c = 0;
        d = 0;
        e = 0;
        f[address(this)] = 0;
    }
    function increment() public returns (contract returns (uint)) {
        a = f[address(this)];
        f[address(this)] = 0;
        return c + b + a;
    }
    function update() public {
        a = f[msg.sender];
        f[msg.sender] = 0;
    }
}
