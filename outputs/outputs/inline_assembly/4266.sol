pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor (uint Y, uint Z) public {
        a = Z;
        b = Y + Z;
        c[msg.sender] = 4;
    }
    function increment() public returns (uint) {
        return (a + b);
    }
    function update() public {
        c[msg.sender] = 7;
        b = increment();
    }
}
