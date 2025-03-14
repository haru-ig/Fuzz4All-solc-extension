pragma solidity ^0.8.0;
contract NewMath {
    function newpower(uint x, uint n) public new {
        require(n >= 0, "negative exponent not allowed");
        _;
    }
}
