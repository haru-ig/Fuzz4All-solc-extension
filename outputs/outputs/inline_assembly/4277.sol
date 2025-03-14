pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    uint public d;
    constructor(uint Z) public {
        b = Z;
        a = b;
        d = 4;
    }
    function increment() public returns (uint) {
        return (a + 3);
    }
    function update() public onlyOwner() {
        a = c[msg.sender];
        c[msg.sender] = 0;
    }
}
