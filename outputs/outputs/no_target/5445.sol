pragma solidity ^0.8.0;
library Library {
    function f(uint256 i) {}
}
function f() public pure {
    require(false);
}
contract C is I {
    I f;
    function f() public pure virtual {
        f = 0x8000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000;
    }
}
