pragma solidity ^0.8.0;
contract Mutant2Fallback {
    bool public constant internalCall = true;
    function () internal pure {}
    function noCall() public pure returns (bool) {
        return internalCall;
    }
}
