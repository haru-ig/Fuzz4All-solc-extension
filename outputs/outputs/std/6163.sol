pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent8 {
    function f(uint[0] memory array) public pure {
    array[0] = 0;
    contract SemanticallyNotEquivalent9 c = new SemanticallyNotEquivalent9();
}
}
