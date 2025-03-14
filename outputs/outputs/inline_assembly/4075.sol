pragma solidity ^0.8.0;
contract SemanticsEquivalence19 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint y) public {
        x1 = y + 1;
        x2 = y;
    }
}
