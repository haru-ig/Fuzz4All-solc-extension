pragma solidity ^0.8.0;
contract SyntacticallyDistinct {
    uint public syntacticallyDistinct = 0;
    constructor() {
        syntacticallyDistinct += 1;
    }
    modifier syntacticallyDistinctValueModified() {
        syntacticallyDistinct += 1;
        _;
    }
}
