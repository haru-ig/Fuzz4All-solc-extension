pragma solidity ^0.8.0;
contract SemanticsEquivalence26x1 is SemanticsEquivalence25x1 {
    function mstore() public pure {
        require(
            _a1() ==
            _a2(),
            "the two arguments should be the same"
        );
        return x2;
    }
}
