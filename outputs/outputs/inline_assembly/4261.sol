pragma solidity ^0.8.0;
contract Mutators23SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    uint public c;
    constructor (uint Z) public {
        a = Z / 4;
        b = Z * 3;
        c = a;
    }
    function increment () public returns (uint) {
        return (b + a + 2);
    }
    function update() public {
        b = a + 1;
    }
}
