pragma solidity ^0.8.0;
contract Mutators15SemanticallyEquivalentMutated3 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 5;
    }
    uint public constant increment = a + 4;
}

pragma solidity ^0.8.0;
contract Mutators15ExactCopyMutated4 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 7;
    }
    function increment () public returns (uint) {
        return (a + 4);
    }
}
