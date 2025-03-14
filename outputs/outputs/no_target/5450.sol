pragma solidity ^0.8.0;
contract Mutated {
    function get() public pure {
        I x;
        function y() view public pure returns (address) {
            return (address(x));
        }
        function z() view public pure returns (address) {
            return (address(x));
        }
    }
}.
