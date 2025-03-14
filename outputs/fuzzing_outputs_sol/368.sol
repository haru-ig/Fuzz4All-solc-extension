pragma solidity ^0.8.0;
contract ContractWithFallbackModifier5 {
    enum Greeter { Caller, Fallback }
    function foo(Greeter greeter) public returns (address){ return address(0); }
    function fallback(Greeter) public payable returns (uint256, uint256){ uint y; uint x; y = y + x/y; return (y, x); }
}
