pragma solidity ^0.8.0;
contract SemanticallyEquivalentM12 {
    constructor () public {}
    function emitLog(uint256 value) public {}
    event Log(uint256 value);
}
contract SemanticallyEquivalentM13 is SemanticallyEquivalentM12 {}
