pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor(uint W) public {
        b = W * 3;
        a = b;
    }
    function increment() public returns (uint) {
        return (a + 2);
    }
    function update() public {

        require(c[msg.sender]!= 0);
    }
}
