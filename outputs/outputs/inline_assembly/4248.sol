pragma solidity ^0.8.0;
contract Mutators15SemanticallyEquivalentMutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment () public returns (uint) {
        return (a + 4);
    }
}
