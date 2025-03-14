pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated4 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    uint modifier restricted() {
        c = a + b + c + b - 1;
        e = a + b + c + b - 2;
        b = 0;
        a = 0;
        return;
    }
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
        c = 0;
        d = 0;
        e = 0;
    }
    function increment() public modifier restrict {
        return restricted();
    }
    function update() public {
        a = f[msg.sender];
        f[msg.sender] = 0;
    }
}
