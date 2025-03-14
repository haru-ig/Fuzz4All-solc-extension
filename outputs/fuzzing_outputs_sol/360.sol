pragma solidity ^0.8.0;
contract ContractWithFallbackModifier4 {
    function foo() public returns (address){ return address(0); }
    function call1() public returns (address){ call(foo()); return address(0); }
    function call2() public returns (address){ call(fallback()); return address(0); }
    function fallback() public payable returns (address){ return address(0); }
}
