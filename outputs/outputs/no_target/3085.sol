pragma solidity ^0.8.0;
contract fourth{
    function gg() public pure {}
    function g() public pure {
        return (gg());
    }
}
