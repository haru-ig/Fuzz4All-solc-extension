pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated2Mutator2 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
    }
    function increment(uint X) public returns (uint) {
        require(X < 6, "X too small");
        return (a + X);
    }
    function update() public {
        a = c[msg.sender];
        c[msg.sender] = 0;
    }
}
