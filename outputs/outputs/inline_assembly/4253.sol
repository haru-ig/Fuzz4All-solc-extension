pragma solidity ^0.8.0;
contract Mutators15SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    constructor (uint Y) public {
        a = Y * 3;
        b = a;
    }
    function increment () public returns (uint) {
        return (a + b + 4);
    }
    function set_a (uint X) public {
        a = X;
    }
}
