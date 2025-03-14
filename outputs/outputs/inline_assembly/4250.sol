pragma solidity ^0.8.0;
contract Mutators15SemanticallyEquivalentMutated3 {
    uint public a;
    constructor (uint Y) public {
        a = a * Y + 1;
    }
    function increment () public returns (uint) {
        return (a * 5) + 7;
    }
}
