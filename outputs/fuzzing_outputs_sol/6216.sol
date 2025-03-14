pragma solidity ^0.8.0;
contract Mutant2Fallback2 {
    function receive() public pure {
        bool flag = false;
        assembly { flag := and(flag, not(gas())) }
        require(flag, "");
    }
}
contract Mutant1Fallback {
    function normalCall() internal pure {
    }
    function externalCall() external pure returns (bool) {
        return false;
    }
    function internalCall() public pure {
    }
}
contract Mutant1Fallback2 {
    function normalCall() external pure returns (bool) {
        return false;
    }
    function externalCall() public pure returns (bool) {
        return false;
    }
    function internalCall() public pure {
    }
    function receive() public pure {
        bool flag = false;
        assembly { flag := and(flag, not(gas())) }
        require(flag, "");
    }
}
contract Mutant0Fallback {
    function normalCall() external pure returns (bool) {
        return false;
    }
    function externalCall() public pure {
    }
    function internalCall() public pure {
    }
    function receive() public pure {
        bool flag = false;
        assembly { flag := and(flag, not(gas())) }
        require(flag, "");
    }
}
