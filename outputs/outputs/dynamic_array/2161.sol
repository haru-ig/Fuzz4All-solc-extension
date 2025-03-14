pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_10{
    function test() public pure returns (bool) {
        bool ret;
        (ret, ret) = aaa(aaa);
        return ret;
    }

    function aaa(bool[10] memory x) public pure returns (bool, bool) {
        (, bool r) = aaa(aaa(0));
        (, r) = aaa(aaa(0));
        return (r, x[4]);
    }

    function aaa(bool[10] memory x) public pure returns (bool, bool) {
        (r, bool n) = aaa(iii());
        r = bool(n);
        return (r, r);
    }

    function iii(bool memory x) public pure returns (bool) {
        x = false;
    }
}
