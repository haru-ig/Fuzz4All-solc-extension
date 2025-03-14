pragma solidity ^0.8.0;
contract Mutators22SemanticallyEquivalentMutated3 {
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
        a = a++ * 3 * 3;
    }
}
