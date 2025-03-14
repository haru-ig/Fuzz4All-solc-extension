pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithNewAndZero extends SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithNew {
    uint public constant ZEROFIXED;
    constructor() {
        ZEROFIXED = 0;
    }
}
