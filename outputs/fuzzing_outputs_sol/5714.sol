pragma solidity ^0.8.0;
contract semanticallyequivalent17
{
    uint z;
    modifier non_zero() {
        assembly { z := 0 }
        _;
    }
    modifier less_than_100 (uint x) {
        require(x < 100, "less than 100");
        _;
    }
    function test () public {
        z = 20;
        z = 1 + 1;
    }
    function safe_fallback () external non_zero { z = 5 * 5; _;}
    function bad_fallback () public { z = 25; _;}
}
