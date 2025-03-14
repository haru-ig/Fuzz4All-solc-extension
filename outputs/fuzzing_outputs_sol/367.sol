pragma solidity ^0.8.0;
contract ContractWithFallback {
    function foo() public returns (address){ return address(0); }
    function fallback() public { return;}
}
