pragma solidity ^0.8.0;
contract SemanticMutation15 {
    address a;
    function f() public pure { a << 32; }
}
