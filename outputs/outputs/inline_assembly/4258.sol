pragma solidity ^0.8.0;
contract Mutators22SemanticallyEquivalentMutated2 {
    uint public a;

    uint public b;
    constructor (uint Z) public {
        b = Z * 3;
        a = b;
    }
     function increment () public returns (uint) {
        return (a + 4);
    }
    function update() public {
        a = ++b;
    }
}
