pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
        c = 0;
        d = 0;
        e = 0;
    }
    function increment() public returns (uint) {
        return (a + b + c + b);
    }
    function update() public {
        a = f[msg.sender];
        f[msg.sender] = 0;
    }
}
