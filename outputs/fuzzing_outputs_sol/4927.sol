pragma solidity ^0.8.0;
contract SemanticalEqualFallback1 {
    function fallback() public pure {
        uint _dummy = 5;
    }

    function fallback() public pure constant {
        uint _dummy = 10;
    }

    function fallback() public pure constant returns (bool){
        uint _dummy = 25;
    }
}
