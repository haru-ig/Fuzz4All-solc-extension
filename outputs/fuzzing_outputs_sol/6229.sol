pragma solidity ^0.8.0;
contract Mutant2Fallback {
    function normalCall() internal pure {}
    function mutantCall() public pure {
        address(0).mutantCall();
    }
}
