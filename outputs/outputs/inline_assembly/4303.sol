pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated7{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        b = Z + 2;
        a = b + 1;
        a = 2;
        c = 0;
        d = 0;
        e = 0;
        f[0xabcdef] = 0;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0 + a;
    }
    function logit(uint _data) public returns (uint) {
        return 0;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}
contract NotMutators22SemanticallyEquivalentMutated8
