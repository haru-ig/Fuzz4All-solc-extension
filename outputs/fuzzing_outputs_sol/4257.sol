pragma solidity ^0.8.0;
contract SemanticallyEquivalentCallerV2 {
    function Mutator() public pure {}
}
contract CallerV2 {
    function fallback(uint) public pure {}
    function pure fallback() public pure {}
}
