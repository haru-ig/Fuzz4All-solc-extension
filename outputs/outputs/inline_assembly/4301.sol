pragma solidity ^0.8.0;
contract NotMutators23SemanticallyEquivalentMutated7{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c = Z - 5;
        c = 0;
        b = Z + 2;
        a = b + c;
        a = 1;
        d = 0;
        e = 0;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0 + a;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}
contract NotMutators23SemanticallyEquivalentMutated8{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
