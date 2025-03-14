pragma solidity ^0.8.0;
contract ContractWithFallbackModifier6 {
    enum Greeter { Caller, Fallback }
    function foo(Greeter greeter) public returns (address){ return address(0); }
    function fallback(Greeter) public payable returns (uint256, uint256){ uint y; uint x; y = y + x/y; return (y, x); }
    function bar() public returns (uint256, uint256){ uint x; return (x/x, x); }
    function baz() public returns (uint256){ return (0/x)/0; }
}
