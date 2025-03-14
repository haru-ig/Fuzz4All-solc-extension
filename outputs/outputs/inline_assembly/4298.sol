pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated{
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
        a = a + b + b + c + b;
        return a;
    }
    function update() public {
        f[msg.sender] = f[msg.sender] + 1;
    }
    function notMutateMe() public {
        d = increment();
        e = update();
    }
}
