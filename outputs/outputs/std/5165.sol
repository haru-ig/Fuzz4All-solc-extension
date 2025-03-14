pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function semanticEquivalent(uint a) public pure { }
}

pragma solidity ^0.8.0;
contract Generic {
    uint public x;
    function semanticEquivalent() public pure { }
}
