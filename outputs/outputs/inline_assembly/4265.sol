pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated {
    mapping (address => uint) private c;
    uint public a;
    uint public b;
    mapping (address => uint) public c1;
    constructor (uint Z) public {
        b = Z * 3;
        a = b;
    }
    function increment() public returns (uint) {
        return (a + 4);
    }
    function update() public {
        a = c[msg.sender];
        c1[msg.sender] = ++b;
    }
}
