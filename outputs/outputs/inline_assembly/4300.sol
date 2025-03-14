pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated7{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a = Z - b;
        c = Z * 2;
        a = 1;
        d = 0;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0 + a;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}
