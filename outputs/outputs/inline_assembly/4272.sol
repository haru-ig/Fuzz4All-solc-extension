pragma solidity ^0.8.0;
contract NotMutators22SemanticsAndMutationMutated2 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor () public {
        b = 5;
        a = b;
    }
    function increment() public pure {
        return (a + 4);
    }
    function update() public returns (uint) {
        c[msg.sender] = 0;
        return (b);
    }
}
