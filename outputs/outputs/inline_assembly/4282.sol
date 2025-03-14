pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
    }
    function increment() public returns (bool) {
        return increment2();
    }
    function increment2() public returns(uint) {
        return (a + 4) * 3;
    }
    function update() public {
        a = c[msg.sender];
        c[msg.sender] = 0;
    }
}
