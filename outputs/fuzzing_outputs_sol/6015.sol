pragma solidity ^0.8.0;
contract NotMutated {
    function _fallback(uint) public {
    }
}
contract ContractWithFallback {
    function _fallback(uint k) public pure { k = 1; }
    function _data(uint) public pure { k = 1; }
}
