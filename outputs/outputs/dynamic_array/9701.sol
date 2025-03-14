pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
    uint[] public semanticallyDifferent5;
    uint[] public semanticallyDifferent6;
}
contract SomeContract {
    SemanticallyEquivalent2 public semanticallyDifferent7;
    SemanticallyEquivalent3 public semanticallyDifferent8;
}
