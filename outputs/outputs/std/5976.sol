pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges5 {
}
pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges {
    function isEquivalentTo(SemanticsEquivalentChanges x) public pure returns (bool) {
        (bool b1, bool b2) = x;
        return b1 == b2;
    }
}
