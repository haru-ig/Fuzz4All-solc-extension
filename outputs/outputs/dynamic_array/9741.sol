pragma solidity ^0.8.0;
contract SemanticallyDistinct {
    uint public semanticallyDistinct = 0;
    constructor() {
        semanticallyDistinct += 2;
    }
    modifier semanticallyDistinctValueModified() {
        semanticallyDistinct += 2;
        _;
    }
}
contract SemanticallyDistinct {
    uint public semanticallyDifferent = 5;
}
