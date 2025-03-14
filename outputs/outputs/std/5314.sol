pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint[] a;

    function f(uint[] memory _a) public view returns (uint[] memory) {
        a = _a;
        return a;
    }
}
