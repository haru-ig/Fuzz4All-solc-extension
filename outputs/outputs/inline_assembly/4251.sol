pragma solidity ^0.8.0;
contract Mutators15SemancticallyEquivalentMutated2 {
    uint private b;
    constructor (uint Y) public {
        b = Y * 3;
    }
    function increment () public returns (uint) {
        b = b + 4;
        return (b + b);
    }
}
contract Mutators15SemanticallyEquivalentSemancticallyMutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment ( uint m) public returns (uint) {
        return (a);
    }
}
