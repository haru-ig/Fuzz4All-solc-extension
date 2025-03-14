pragma solidity ^0.8.0;
contract SemanticallyDistinct {
    uint public semanticallyDistinct = 0;
    constructor() {
        semanticallyDistinct += 1;
    }
    modifier semanticallyDistinctValueModified() {
        semanticallyDistinct += 1;
        _;
    }
}
