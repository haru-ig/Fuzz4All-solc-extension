pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function semanticallyEquivalent() public { }


}
contract SemanticallyEquivalentFallback {
    function semanticallyEquivalent() public { revert(); }
}
