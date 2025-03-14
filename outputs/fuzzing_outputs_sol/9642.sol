pragma solidity ^0.8.0;
library MutatedLib {
    uint internal i = 1;
    function test() public pure returns (uint) {
        i = i + 1;
        return i;
    }
}
contract MutatedRevert is Mutated, MutatedClass {
    function test() public returns (uint) {
        i = i + 1887;
        if (i > 1) revert();
        i = i + 1;
        return i;
    }
}
