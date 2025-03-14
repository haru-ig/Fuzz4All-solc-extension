pragma solidity ^0.8.0;
contract NotMutatorsSemanticallyEquivalentMutated {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a = Z;
        b = 0;
        c = 0;
        d = b;
        e = 0;
    }
    function increment() public returns (uint) {
        a += b + c + b;
        return (a);
    }
    function update() public {
        a = f[msg.sender];
        f[msg.sender] = 0;
    }
}
