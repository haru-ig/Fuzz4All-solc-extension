pragma solidity ^0.8.0;
contract Arrays_Mutation {
    bytes32 private immutable symbol_ = "ARRAY_MOD";
    bytes32 private immutable name_ = "NAME3";
    bytes32 private immutable decimals_ = "ARRAY_DECIMALS3";
    uint[] public testArray2;
    uint public value3_ = 0;
}
contract TestArrayMutated {
    constructor() {
        ArraysMutated c = new ArraysMutated();
        c.symbol_ = symbol_;
        c.name_ = name_;
        c.decimals_ = decimals_;
    }
}
