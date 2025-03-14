pragma solidity ^0.8.0;
contract SlightlyDifferent {
    function slightlyDifferent() public { }

    fallback();
}
contract SemanticallyEquivalentCaller {
    function semanticallyEquivalent(address contractAddress) public payable { }

    fallback to SemanticallyEquivalentCaller();
}
