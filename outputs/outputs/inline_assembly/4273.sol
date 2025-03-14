pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor (uint Z) public {
        b = Z * 3;
        a = b + 4;
    }
    function increment() public returns (uint) {
        return a;
    }
    function update() public {
        a = c[msg.sender];
        c[msg.sender] = 0;
    }
}
