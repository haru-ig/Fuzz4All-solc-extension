pragma solidity ^0.8.0;
contract ContractWithFallbackModifier17 {
    enum Greeter { Caller, Mutated, Fallback }
    function foo(Greeter greeter) public returns (address){ return address(0); }
    function mutate() public payable returns (uint256, uint256){ uint x = 1; uint y = 1; x *= x; y *= y; return (x, y); }
    function fallback(Greeter) public payable returns (uint256, uint256){ uint y; uint x; y = y + x/y; return (y, x); }
}

pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2 {
enum Greeter { Caller, MutationReverted }
function foo(Greeter greeter) public returns (address){ return address(0); }
function revert() public payable returns (uint256, uint256){ uint x = 1; uint y = 1; x *= x; y *= y; revert(); return (x, y); }
function fallback(Greeter) public payable returns (uint256, uint256){ uint y; uint x; y = y + x; revert(); return (y, x); }
}
