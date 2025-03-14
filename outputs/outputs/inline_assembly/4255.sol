pragma solidity ^0.8.0;
contract Mutators15SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    constructor (uint Y) public {
        a = Y;
        b = a / 2;
    }
    function increment () public returns (uint) {
        return (a + b + 4);
    }
    function set_a (uint B) public {
        a = B;
    }
}
